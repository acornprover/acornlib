# 修复 real_field.ac 在官方 Acorn 0.2.6 下的验证失败

**日期**: 2026-08-08
**提交**: `69239dfb`
**状态**: 已合并到 main，官方 acorn 0.2.6 与本地 acorn 均 0-search 通过

## 背景

`src/real/real_field.ac`（实数除法与域性质）在官方 Acorn 0.2.6 下验证失败，表现为两类问题：

1. **`acorn check --strict`**：`mul_left_cancel` 证书重放失败 ——
   `certificate trace br step 296 does not apply BooleanEqualityNotLeftOrRight@0 from premise 50`。
2. **`acorn verify --ignore-hash`**：3 个定理搜索恢复超时（60s~180s 均失败）：
   - `div_cancel_common`（line 523）
   - `prod_eq_to_div_eq` 内的 `a * b / (b * d) = a / d`（line 561）
   - `div_div`（line 636）

官方 acorn 全套工作流没有问题，是**搜索能力较弱**：证明中依赖搜索器自动补步骤
（SEARCH 步骤，证书里 p 为空）的写法，官方搜索器无法在超时内恢复。

## 根因分析

### 1. br 步骤重放分歧（strict 失败）

证书是本地 acorn（pr-65 时代修复版）生成的。证书中的 `br`（布尔化简）步骤记录
一个 literal index；官方 acorn 重放时，由于 elaboration/sugar 状态偏移，记录的
index 指向错误的字面量，导致 `BooleanEqualityNotLeftOrRight` 应用失败。

本地 acorn 有 `fix/replay-optimal` 分支（`src/certificate_trace.rs`）：br 重放时
扫描**所有** literal index 寻找匹配的 kind + contrapositive 对，因此本地能重放，
官方不能。

**结论**：不改官方引擎（用户判断官方工作流正确），而是改写证明让官方搜索器
能快速恢复，从而用官方自己生成的证书完成重放。

### 2. SEARCH 步骤（verify 超时）

证书中 p 为空的步骤（SEARCH）在 `verify --ignore-hash` 下需要**现场搜索**。
官方搜索器对 `div_cancel_common` 等定理的 SEARCH 步骤 60s+ 超时
（"shallow explosion"）。

关键观察：
- `mul_left_cancel` 官方**能**恢复（证明简单，6 行简单等式链）
- `div_mul_cancel_right` 官方能恢复（证明中等，含 Field 泛型 `inverse_dist` 1-step）
- 官方恢复失败的都是证明体依赖复杂结合/交换重排或需要实例化
  `inverse_div`/`mul_div` 大定理的

## 修复方案：显式展开 + 拆分 lemma

用户提示（关键）：`(c·b)⁻¹ = c⁻¹·b⁻¹` **只在交换群成立**，应当仔细展开；
以及"如果没法 in-place 改好，可以把证明体拆小，作为单独 lemma 拆出来"。

### div_cancel_common：mul_left_cancel 风格

原证明：展开 `(a*b)/(c*b)` → 用 Field 泛型 `inverse_dist` 一步替换
`(c*b).inverse = c.inverse * b.inverse` → 结合/交换重排 → 化简。
其中"替换 + 重排"步骤官方搜索器找不到。

改写：先显式证明 `(c*b) * (a/c) = a*b`（逐步展开乘法结合/交换律，
每步都是 1-step 重写），然后应用 `mul_left_cancel`。

```acorn
// Show (c * b) * (a / c) = a * b, then apply mul_left_cancel.
c * b != Real.0
(c * b) * (a / c) = (c * b) * (a * c.inverse)
(c * b) * (a * c.inverse) = c * (b * (a * c.inverse))
c * (b * (a * c.inverse)) = c * (a * (b * c.inverse))
c * (a * (b * c.inverse)) = c * (a * (c.inverse * b))
c * (a * (c.inverse * b)) = c * ((a * c.inverse) * b)
c * ((a * c.inverse) * b) = (c * (a * c.inverse)) * b
(c * (a * c.inverse)) * b = ((c * a) * c.inverse) * b
((c * a) * c.inverse) * b = ((a * c) * c.inverse) * b
((a * c) * c.inverse) * b = (a * (c * c.inverse)) * b
(a * (c * c.inverse)) * b = (a * Real.1) * b
(a * Real.1) * b = a * b
(c * b) * (a / c) = a * b
(a * b) / (c * b) = a / c
```

### prod_eq_to_div_eq：显式展开 div_cancel_common 实例化

原证明直接写 `(a*b)/(b*d) = a/d`（需要搜索器实例化 `div_cancel_common(a,b,d)`
并交换 `b*d = d*b`）。改写为显式两步：

```acorn
(a * b) / (d * b) = a / d
d * b = b * d
(a * b) / (b * d) = a / d
```

### div_div：拆出 div_by_fraction lemma

原证明需要 `(c/d).inverse = d/c`（`inverse_div` 实例化）+ `mul_div` 实例化，
官方搜索器无法在 div_div 上下文中快速找到这两个大定理。

按用户建议拆 lemma：

```acorn
/// Dividing by a fraction flips it: (a/b) / (c/d) = (a/b) * (d/c).
theorem div_by_fraction(a: Real, b: Real, c: Real, d: Real) {
    c != Real.0 and d != Real.0
    implies
    (a / b) / (c / d) = (a / b) * (d / c)
} by {
    if c != Real.0 and d != Real.0 {
        (a / b) / (c / d) = (a / b) * (c / d).inverse
        (c / d).inverse = d / c
        (a / b) / (c / d) = (a / b) * (d / c)
    }
}

theorem div_div(a: Real, b: Real, c: Real, d: Real) {
    ...
} by {
    if b != Real.0 and c != Real.0 and d != Real.0 {
        div_by_fraction(a, b, c, d)
        mul_div(a, b, d, c)
        (a / b) / (c / d) = (a / b) * (d / c)
        (a / b) * (d / c) = (a * d) / (b * c)
        (a / b) / (c / d) = (a * d) / (b * c)
    }
}
```

关键：`div_by_fraction` 和 `mul_div` 作为**独立 lemma**，官方搜索器能分别验证
（独立的证明上下文干净）；`div_div` 只做显式组合（"cite, then state"）。

## 验证结果

单文件（`src/real/real_field.ac`，27594 goals）：

| 验证命令 | 官方 acorn 0.2.6 | 本地 acorn |
|---|---|---|
| `verify --ignore-hash --jobs 8 --timeout 90` | ✅ 27594/27594 | ✅ 27594/27594 |
| `check --strict` | ✅ 27594/27594 | ✅ 27594/27594 |

全库（195997 goals）：

| 验证命令 | 本地 acorn |
|---|---|
| `check --strict`（`scripts/acorn-check-strict.sh`） | ✅ 195997/195997（0 searches） |

## 经验教训

1. **官方 acorn 工作流正确**：失败不是引擎 bug，是证明写法对官方搜索器不友好。
2. **SEARCH 步骤（p 空）是元凶**：证书里需要现场搜索的步骤，官方搜索器
   60s+ 超时。改写为显式 1-step 重写链即可解决。
3. **br 步骤重放分歧**：本地 acorn 生成的证书 br 步骤官方重放可能分歧。
   解法不是改引擎，而是让官方 verify 成功恢复（生成官方证书），官方 strict
   重放官方证书自然一致。
4. **拆 lemma 是有效手段**：大证明拆成小 lemma 后，每个 lemma 独立验证
   （上下文干净），主定理只做显式组合。
5. **"cite, then state" 原则**：引用定理后必须显式写出其结论，不要留给
   搜索器重新发现（那正是超时点）。
6. **`inverse_dist` 只在交换环成立**：`(c·b)⁻¹ = c⁻¹·b⁻¹` 在一般环不成立，
   证明中要显式展开交换/结合（用户强调）。

## 附注

- 实验在独立拷贝 `/tmp/acornlib-exp` 中进行（避免与 subagent worktree 互相干扰），
  完成后同步回主仓库并清理。
- 证书用本地 acorn 重新生成（`verify --ignore-hash` 会写回），官方 acorn
  能 0-search 重放这些证书（`check --strict` 27594/27594 OK）。
