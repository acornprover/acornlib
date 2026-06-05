# AI Candidate Ranking for Open Erdos Problems

Generated: 2026-06-05. Updated to optimize for an Acorn-assisted Erdos-problem strategy.

Source data: the Erdos Problems public database (`data/problems.yaml`) and the corresponding `https://www.erdosproblems.com/latex/<id>` statement pages. I treat `status.state == "open"` as the current unsolved set, giving 622 problems. The site FAQ warns that status is a work in progress, so these are research triage guesses rather than claims that the problems are truly still open.

Scoring method: each problem has a single score from 100 to 0. The score combines near-term AI-likelihood, Acorn-readiness, and shared infrastructure value. Positive signals include an already formalized statement, no or low recorded prize, OEIS/computational hooks, short concrete statements, existing Acorn-adjacent prerequisites, and tags that would unlock many other Erdos targets. Negative signals include high prizes, famous early catalogue problems, deep analytic/set-theoretic/irrationality content, large Ramsey gaps, long continuous arguments, and areas where Acorn currently lacks the basic language.

The list is rank-normalized after computing the raw heuristic score, so it stays ordered by this one score and no score is shared by more than 7 problems. The score is not a probability of success; it is a queueing heuristic for what to attack after building the corresponding Acorn library infrastructure.

## Ranked Open Problems

### 1. Problem 376 - Score 100
- Site: https://www.erdosproblems.com/376
- Tags: number theory, binomial coefficients, base representations
- Prize: no; formalized: yes; OEIS: A030979
- Statement: Are there infinitely many $n$ such that $\binom{2n}{n}$ is coprime to $105$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, binomial coefficients, and base representations) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 2. Problem 730 - Score 100
- Site: https://www.erdosproblems.com/730
- Tags: number theory, binomial coefficients, base representations
- Prize: no; formalized: yes; OEIS: A129515
- Statement: Are there infinitely many pairs of integers $n\neq m$ such that $\binom{2n}{n}$ and $\binom{2m}{m}$ have the same set of prime divisors?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, binomial coefficients, and base representations) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 3. Problem 396 - Score 100
- Site: https://www.erdosproblems.com/396
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: A375077
- Statement: Is it true that for every $k$ there exists $n$ such that\[\prod_{0\leq i\leq k}(n-i) \mid \binom{2n}{n}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 4. Problem 155 - Score 100
- Site: https://www.erdosproblems.com/155
- Tags: additive combinatorics, sidon sets
- Prize: no; formalized: yes; OEIS: A143824, A227590, A003022
- Statement: Let $F(N)$ be the size of the largest Sidon subset of $\{1,\ldots,N\}$. Is it true that for every $k\geq 1$ we have\[F(N+k)\leq F(N)+1\]for all sufficiently large $N$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 5. Problem 849 - Score 99
- Site: https://www.erdosproblems.com/849
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: A003016, A003015, A059233, A098565, A090162, A180058, A182237
- Statement: Is it true that, for every integer $t\geq 1$, there is some integer $a$ such that\[\binom{n}{k}=a\](with $1\leq k\leq n/2$) has exactly $t$ solutions?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 6. Problem 18 - Score 99
- Site: https://www.erdosproblems.com/18
- Tags: number theory, divisors, factorials
- Prize: no; formalized: yes; OEIS: A005153
- Statement: We call $m$ practical if every integer $1\leq n<m$ is the sum of distinct divisors of $m$. If $m$ is practical then let $h(m)$ be such that $h(m)$ many divisors always suffice. Are there infinitely many practical $m$ such that\[h(m) < (\log\log m)^{O(1)}?\]Is it true that $h(n!)<n^{o(1)}$? Or...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, divisors, and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 7. Problem 386 - Score 99
- Site: https://www.erdosproblems.com/386
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: A280992
- Statement: Let $2\leq k\leq n-2$. Can $\binom{n}{k}$ be the product of consecutive primes infinitely often? For example\[\binom{21}{2}=2\cdot 3\cdot 5\cdot 7.\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 8. Problem 1094 - Score 99
- Site: https://www.erdosproblems.com/1094
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: none
- Statement: For all $n\geq 2k$ the least prime factor of $\binom{n}{k}$ is $\leq \max(n/k,k)$, with only finitely many exceptions.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 9. Problem 313 - Score 99
- Site: https://www.erdosproblems.com/313
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: A054377
- Statement: Are there infinitely many solutions to\[\frac{1}{p_1}+\cdots+\frac{1}{p_k}=1-\frac{1}{m},\]where $m\geq 2$ is an integer and $p_1<\cdots<p_k$ are distinct primes?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 10. Problem 108 - Score 99
- Site: https://www.erdosproblems.com/108
- Tags: graph theory, chromatic number, cycles
- Prize: no; formalized: yes; OEIS: possible
- Statement: For every $r\geq 4$ and $k\geq 2$ is there some finite $f(k,r)$ such that every graph of chromatic number $\geq f(k,r)$ contains a subgraph of girth $\geq r$ and chromatic number $\geq k$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory, chromatic number, and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 11. Problem 14 - Score 98
- Site: https://www.erdosproblems.com/14
- Tags: number theory, sidon sets, additive combinatorics
- Prize: no; formalized: yes; OEIS: A143824
- Statement: Let $A\subseteq \mathbb{N}$. Let $B\subseteq \mathbb{N}$ be the set of integers which are representable in exactly one way as the sum of two elements from $A$. Is it true that for all $\epsilon>0$ and large $N$\[\lvert \{1,\ldots,N\}\backslash B\rvert \gg_\epsilon N^{1/2-\epsilon}?\]Is it possible...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, sidon sets, and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 12. Problem 340 - Score 98
- Site: https://www.erdosproblems.com/340
- Tags: number theory, additive combinatorics, sidon sets
- Prize: no; formalized: yes; OEIS: A080200, A005282
- Statement: Let $A=\{1,2,4,8,13,21,31,45,66,81,97,\ldots\}$ be the greedy Sidon sequence: we begin with $1$ and iteratively include the next smallest integer that preserves the Sidon property (i.e. there are no non-trivial solutions to $a+b=c+d$). What is the order of growth of $A$? Is it true that\[\lvert...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, additive combinatorics, and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 13. Problem 1095 - Score 98
- Site: https://www.erdosproblems.com/1095
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: A003458
- Statement: Let $g(k)>k+1$ be the smallest $n$ such that all prime factors of $\binom{n}{k}$ are $>k$. Estimate $g(k)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 14. Problem 406 - Score 98
- Site: https://www.erdosproblems.com/406
- Tags: number theory, base representations
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that there are only finitely many powers of $2$ which have only the digits $0$ and $1$ when written in base $3$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and base representations) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 15. Problem 727 - Score 98
- Site: https://www.erdosproblems.com/727
- Tags: number theory, factorials
- Prize: no; formalized: yes; OEIS: A002503, A343507, A389396
- Statement: Let $k\geq 2$. Does\[(n+k)!^2 \mid (2n)!\]for infinitely many $n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 16. Problem 387 - Score 98
- Site: https://www.erdosproblems.com/387
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there an absolute constant $c>0$ such that, for all $1\leq k< n$, the binomial coefficient $\binom{n}{k}$ has a divisor in $(cn,n]$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 17. Problem 274 - Score 97
- Site: https://www.erdosproblems.com/274
- Tags: group theory, covering systems
- Prize: no; formalized: yes; OEIS: none
- Statement: If $G$ is a group then can there exist an exact covering of $G$ by more than one cosets of different sizes? (i.e. each element is contained in exactly one of the cosets)
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (group theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 18. Problem 469 - Score 97
- Site: https://www.erdosproblems.com/469
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: A006036, A119425
- Statement: Let $A$ be the set of all $n$ such that $n=d_1+\cdots+d_k$ with $d_i$ distinct proper divisors of $n$, but this is not true for any $m\mid n$ with $m<n$. Does\[\sum_{n\in A}\frac{1}{n}\]converge?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 19. Problem 1054 - Score 97
- Site: https://www.erdosproblems.com/1054
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: A167485
- Statement: Let $f(n)$ be the minimal integer $m$ such that $n$ is the sum of the $k$ smallest divisors of $m$ for some $k\geq 1$. Is it true that $f(n)=o(n)$? Or is this true only for almost all $n$, and $\limsup f(n)/n=\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 20. Problem 1145 - Score 97
- Site: https://www.erdosproblems.com/1145
- Tags: additive combinatorics, additive basis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A=\{1\leq a_1<a_2<\cdots\}$ and $B=\{1\leq b_1<b_2<\cdots\}$ be sets of integers with $a_n/b_n\to 1$. If $A+B$ contains all sufficiently large positive integers then is it true that $\limsup 1_A\ast 1_B(n)=\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 21. Problem 893 - Score 97
- Site: https://www.erdosproblems.com/893
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: A046801
- Statement: If $\tau(n)$ counts the divisors of $n$ then let\[f(n)=\sum_{1\leq k\leq n}\tau(2^k-1).\]Does $f(2n)/f(n)$ tend to a limit?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 22. Problem 321 - Score 97
- Site: https://www.erdosproblems.com/321
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: A384927, A391592
- Statement: What is the size of the largest $A\subseteq \{1,\ldots,N\}$ such that all sums $\sum_{n\in S}\frac{1}{n}$ are distinct for $S\subseteq A$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 23. Problem 886 - Score 96
- Site: https://www.erdosproblems.com/886
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\epsilon>0$. Is it true that, for all large $n$, the number of divisors of $n$ in $(n^{1/2},n^{1/2}+n^{1/2-\epsilon})$ is $O_\epsilon(1)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 24. Problem 390 - Score 96
- Site: https://www.erdosproblems.com/390
- Tags: number theory, factorials
- Prize: no; formalized: yes; OEIS: A193429
- Statement: Let $f(n)$ be the minimal $m$ such that\[n! = a_1\cdots a_k\]with $n< a_1<\cdots <a_k=m$. Is there (and what is it) a constant $c$ such that\[f(n)-2n \sim c\frac{n}{\log n}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 25. Problem 44 - Score 96
- Site: https://www.erdosproblems.com/44
- Tags: number theory, sidon sets, additive combinatorics
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $N\geq 1$ and $A\subset \{1,\ldots,N\}$ be a Sidon set. Is it true that, for any $\epsilon>0$, there exist $M$ and $B\subset \{N+1,\ldots,M\}$ (which may depend on $N,A,\epsilon$) such that $A\cup B\subset \{1,\ldots,M\}$ is a Sidon set of size at least $(1-\epsilon)M^{1/2}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, sidon sets, and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 26. Problem 241 - Score 96
- Site: https://www.erdosproblems.com/241
- Tags: additive combinatorics, sidon sets
- Prize: $100; formalized: yes; OEIS: A387704
- Statement: Let $f(N)$ be the maximum size of $A\subseteq \{1,\ldots,N\}$ such that the sums $a+b+c$ with $a,b,c\in A$ are all distinct (aside from the trivial coincidences). Is it true that\[ f(N)\sim N^{1/3}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (additive combinatorics and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 27. Problem 373 - Score 96
- Site: https://www.erdosproblems.com/373
- Tags: number theory, factorials
- Prize: no; formalized: yes; OEIS: A003135
- Statement: Show that the equation\[n! = a_1!a_2!\cdots a_k!,\]with $n-1>a_1\geq a_2\geq \cdots \geq a_k\geq 2$, has only finitely many solutions.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 28. Problem 887 - Score 96
- Site: https://www.erdosproblems.com/887
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there an absolute constant $K$ such that, for every $C>0$, if $n$ is sufficiently large then $n$ has at most $K$ divisors in $(n^{1/2},n^{1/2}+C n^{1/4})$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 29. Problem 288 - Score 95
- Site: https://www.erdosproblems.com/288
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that there are only finitely many pairs of intervals $I_1,I_2$ such that\[\sum_{n_1\in I_1}\frac{1}{n_1}+\sum_{n_2\in I_2}\frac{1}{n_2}\in \mathbb{N}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 30. Problem 170 - Score 95
- Site: https://www.erdosproblems.com/170
- Tags: additive combinatorics
- Prize: no; formalized: yes; OEIS: A046693
- Statement: Let $F(N)$ be the smallest possible size of $A\subset \{0,1,\ldots,N\}$ such that $\{0,1,\ldots,N\}\subset A-A$. Find the value of\[\lim_{N\to \infty}\frac{F(N)}{N^{1/2}}.\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 31. Problem 683 - Score 95
- Site: https://www.erdosproblems.com/683
- Tags: number theory, primes, binomial coefficients
- Prize: no; formalized: yes; OEIS: A006530, A074399, A121359
- Statement: Is it true that for every $1\leq k\leq n$ the largest prime divisor of $\binom{n}{k}$, say $P(\binom{n}{k})$, satisfies\[P\left(\binom{n}{k}\right)\geq \min(n-k+1, k^{1+c})\]for some constant $c>0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, primes, and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 32. Problem 1113 - Score 95
- Site: https://www.erdosproblems.com/1113
- Tags: number theory, covering systems
- Prize: no; formalized: yes; OEIS: A076336
- Statement: A positive odd integer $m$ such that none of $2^km+1$ are prime for $k\geq 0$ is called a Sierpinski number . We say that a set of primes $P$ is a covering set for $m$ if every $2^km+1$ is divisible by some $p\in P$. Are there Sierpinski numbers with no finite covering set of primes?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 33. Problem 470 - Score 95
- Site: https://www.erdosproblems.com/470
- Tags: number theory, divisors
- Prize: $10; formalized: yes; OEIS: A006037, A002975
- Statement: Call $n$ weird if $\sigma(n)\geq 2n$ and $n$ is not pseudoperfect, that is, it is not the sum of any set of its divisors. Are there any odd weird numbers? Are there infinitely many primitive weird numbers, i.e. those such that no proper divisor of $n$ is weird?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($10) is small, so it is only a mild difficulty signal. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 34. Problem 1104 - Score 95
- Site: https://www.erdosproblems.com/1104
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: A292528
- Statement: Let $f(n)$ be the maximum possible chromatic number of a triangle-free graph on $n$ vertices. Estimate $f(n)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 35. Problem 912 - Score 95
- Site: https://www.erdosproblems.com/912
- Tags: number theory, factorials
- Prize: no; formalized: yes; OEIS: A071626
- Statement: If\[n! = \prod_i p_i^{k_i}\]is the factorisation into distinct primes then let $h(n)$ count the number of distinct exponents $k_i$. Prove that there exists some $c>0$ such that\[h(n) \sim c \left(\frac{n}{\log n}\right)^{1/2}\]as $n\to \infty$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 36. Problem 975 - Score 94
- Site: https://www.erdosproblems.com/975
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: A147807
- Statement: Let $f\in \mathbb{Z}[x]$ be an irreducible non-constant polynomial such that $f(n)\geq 1$ for all large $n\in\mathbb{N}$. Does there exist a constant $c=c(f)>0$ such that\[\sum_{n\leq X} \tau(f(n))\sim cX\log X,\]where $\tau$ is the divisor function?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 37. Problem 377 - Score 94
- Site: https://www.erdosproblems.com/377
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there some absolute constant $C>0$ such that\[\sum_{p\leq n}1_{p\nmid \binom{2n}{n}}\frac{1}{p}\leq C\]for all $n$ (where the summation is restricted to primes $p\leq n$)?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 38. Problem 757 - Score 94
- Site: https://www.erdosproblems.com/757
- Tags: geometry, distances, sidon sets
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $A\subset \mathbb{R}$ be a set of size $n$ such that every subset $B\subseteq A$ with $\lvert B\rvert =4$ has $\lvert B-B\rvert\geq 11$. Find the best constant $c>0$ such that $A$ must always contain a Sidon set of size $\geq cn$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry, distances, and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 39. Problem 750 - Score 94
- Site: https://www.erdosproblems.com/750
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $f(m)$ be some function such that $f(m)\to \infty$ as $m\to \infty$. Does there exist a graph $G$ of infinite chromatic number such that every subgraph on $m$ vertices contains an independent set of size at least $\frac{m}{2}-f(m)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 40. Problem 124 - Score 94
- Site: https://www.erdosproblems.com/124
- Tags: number theory, base representations
- Prize: no; formalized: yes; OEIS: none
- Statement: For any $d\geq 1$ and $k\geq 0$ let $P(d,k)$ be the set of integers which are the sum of distinct powers $d^i$ with $i\geq k$. Let $3\leq d_1<d_2<\cdots <d_r$ be integers such that\[\sum_{1\leq i\leq r}\frac{1}{d_r-1}\geq 1.\]Can all sufficiently large integers be written as a sum of the shape...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and base representations) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 41. Problem 184 - Score 94
- Site: https://www.erdosproblems.com/184
- Tags: graph theory, cycles
- Prize: no; formalized: yes; OEIS: possible
- Statement: Any graph on $n$ vertices can be decomposed into $O(n)$ many edge-disjoint cycles and edges.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 42. Problem 295 - Score 93
- Site: https://www.erdosproblems.com/295
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: A192881
- Statement: Let $N\geq 1$ and let $k(N)$ denote the smallest $k$ such that there exist $N\leq n_1<\cdots <n_k$ with\[1=\frac{1}{n_1}+\cdots+\frac{1}{n_k}.\]Is it true that\[\lim_{N\to \infty} k(N)-(e-1)N=\infty?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 43. Problem 1108 - Score 93
- Site: https://www.erdosproblems.com/1108
- Tags: number theory, factorials
- Prize: no; formalized: yes; OEIS: A051761, A115645, A025494
- Statement: Let\[A = \left\{ \sum_{n\in S}n! : S\subset \mathbb{N}\textrm{ finite}\right\}.\]If $k\geq 2$, then does $A$ contain only finitely many $k$th powers? Does it contain only finitely many powerful numbers?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 44. Problem 885 - Score 93
- Site: https://www.erdosproblems.com/885
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: none
- Statement: For integer $n\geq 1$ we define the factor difference set of $n$ by\[D(n) = \{\lvert a-b\rvert : n=ab\}.\]Is it true that, for every $k\geq 1$, there exist integers $N_1<\cdots<N_k$ such that\[\lvert \cap_i D(N_i)\rvert \geq k?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 45. Problem 304 - Score 93
- Site: https://www.erdosproblems.com/304
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: A097847, A097849
- Statement: For integers $1\leq a<b$ let $N(a,b)$ denote the minimal $k$ such that there exist integers $1<n_1<\cdots<n_k$ with\[\frac{a}{b}=\frac{1}{n_1}+\cdots+\frac{1}{n_k}.\]Estimate $N(b)=\max_{1\leq a<b}N(a,b)$. Is it true that $N(b) \ll \log\log b$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 46. Problem 312 - Score 93
- Site: https://www.erdosproblems.com/312
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: none
- Statement: Does there exist some $c>0$ such that, for any $K>1$, whenever $A$ is a sufficiently large finite multiset of positive integers with $\sum_{n\in A}\frac{1}{n}>K$ there exists some $S\subseteq A$ such that\[1-e^{-cK} < \sum_{n\in S}\frac{1}{n}\leq 1?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 47. Problem 289 - Score 93
- Site: https://www.erdosproblems.com/289
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that, for all sufficiently large $k$, there exist finite intervals $I_1,\ldots,I_k\subset \mathbb{N}$, distinct, not overlapping or adjacent, with $\lvert I_i\rvert \geq 2$ for $1\leq i\leq k$ such that\[1=\sum_{i=1}^k \sum_{n\in I_i}\frac{1}{n}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 48. Problem 11 - Score 92
- Site: https://www.erdosproblems.com/11
- Tags: number theory, additive basis
- Prize: no; formalized: yes; OEIS: A001220, A377587
- Statement: Is every large odd integer $n$ the sum of a squarefree number and a power of 2?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 49. Problem 82 - Score 92
- Site: https://www.erdosproblems.com/82
- Tags: graph theory
- Prize: no; formalized: yes; OEIS: A120414, A390256, A390257, A390919, A392636, A394400, A394462, A394539, A394563, A394564, A394573, A394574, A394930, A394933
- Statement: Let $F(n)$ be maximal such that every graph on $n$ vertices contains a regular induced subgraph on at least $F(n)$ vertices. Prove that $F(n)/\log n\to \infty$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 50. Problem 153 - Score 92
- Site: https://www.erdosproblems.com/153
- Tags: sidon sets
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A$ be a finite Sidon set and $A+A=\{s_1<\cdots<s_t\}$. Is it true that\[\frac{1}{t}\sum_{1\leq i<t}(s_{i+1}-s_i)^2 \to \infty\]as $\lvert A\rvert\to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 51. Problem 276 - Score 92
- Site: https://www.erdosproblems.com/276
- Tags: number theory, covering systems
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there an infinite Lucas sequence $a_0,a_1,\ldots$ where $a_{n+2}=a_{n+1}+a_n$ for $n\geq 0$ such that all $a_k$ are composite, and yet no integer has a common factor with every term of the sequence?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 52. Problem 945 - Score 92
- Site: https://www.erdosproblems.com/945
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: A048892
- Statement: Let $F(x)$ be the maximal $k$ such that there exist $n+1,\ldots,n+k\leq x$ with $\tau(n+1),\ldots,\tau(n+k)$ all distinct (where $\tau(m)$ counts the divisors of $m$). Estimate $F(x)$. In particular, is it true that\[F(x) \leq (\log x)^{O(1)}?\]In other words, is there a constant $C>0$ such that,...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 53. Problem 273 - Score 92
- Site: https://www.erdosproblems.com/273
- Tags: number theory, covering systems
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a covering system all of whose moduli are of the form $p-1$ for some primes $p\geq 5$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 54. Problem 1093 - Score 91
- Site: https://www.erdosproblems.com/1093
- Tags: number theory, binomial coefficients
- Prize: no; formalized: yes; OEIS: none
- Statement: For $n\geq 2k$ we define the deficiency of $\binom{n}{k}$ as follows. If $\binom{n}{k}$ is divisible by a prime $p\leq k$ then the deficiency is undefined. Otherwise, the deficiency is the number of $0\leq i 1$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 55. Problem 859 - Score 91
- Site: https://www.erdosproblems.com/859
- Tags: number theory, divisors
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $t\geq 1$ and let $d_t$ be the density of the set of integers $n\in\mathbb{N}$ for which $t$ can be represented as the sum of distinct divisors of $n$. Do there exist constants $c_1,c_2>0$ such that\[d_t \sim \frac{c_1}{(\log t)^{c_2}}\]as $t\to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 56. Problem 1194 - Score 91
- Site: https://www.erdosproblems.com/1194
- Tags: additive combinatorics, additive basis, sidon sets
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $A\subset\mathbb{N}$ be such that every integer $n\geq 1$ can be written uniquely as $a_n-b_n$ for some $a_n,b_n\in A$. How fast must $a_n/n$ increase?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics, additive basis, and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 57. Problem 36 - Score 91
- Site: https://www.erdosproblems.com/36
- Tags: number theory, additive combinatorics
- Prize: no; formalized: yes; OEIS: A393584
- Statement: Find the optimal constant $c>0$ such that the following holds. For all sufficiently large $N$, if $A\sqcup B=\{1,\ldots,2N\}$ is a partition into two equal parts, so that $\lvert A\rvert=\lvert B\rvert=N$, then there is some $x$ such that the number of solutions to $a-b=x$ with $a\in A$ and $b\in...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 58. Problem 306 - Score 91
- Site: https://www.erdosproblems.com/306
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $a/b\in \mathbb{Q}_{>0}$ with $b$ squarefree. Are there integers $1<n_1<\cdots<n_k$, each the product of two distinct primes, such that\[\frac{a}{b}=\frac{1}{n_1}+\cdots+\frac{1}{n_k}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 59. Problem 85 - Score 91
- Site: https://www.erdosproblems.com/85
- Tags: graph theory
- Prize: no; formalized: yes; OEIS: A006672
- Statement: Let $n\geq 4$ and $f(n)$ be minimal such that every graph on $n$ vertices with minimal degree $\geq f(n)$ contains a $C_4$. Is it true that, for all large $n$, $f(n+1)\geq f(n)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 60. Problem 920 - Score 90
- Site: https://www.erdosproblems.com/920
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $f_k(n)$ be the maximum possible chromatic number of a graph with $n$ vertices which contains no $K_k$. Is it true that, for $k\geq 4$,\[f_k(n) \gg \frac{n^{1-\frac{1}{k-1}}}{(\log n)^{c_k}}\]for some constant $c_k>0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 61. Problem 944 - Score 90
- Site: https://www.erdosproblems.com/944
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: A critical vertex, edge, or set of edges, is one whose deletion lowers the chromatic number. Let $k\geq 4$ and $r\geq 1$. Must there exist a graph $G$ with chromatic number $k$ such that every vertex is critical, yet every critical set of edges has size $>r$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 62. Problem 326 - Score 90
- Site: https://www.erdosproblems.com/326
- Tags: number theory, additive basis
- Prize: no; formalized: yes; OEIS: none
- Statement: Does there exist $A=\{a_1<a_2<\cdots\}\subset \mathbb{N}$ which is a minimal basis of order $2$ (i.e. every large integer is the sum of $2$ elements from $A$, and no proper subset of $A$ has this property), such that\[\lim_{k\to \infty}\frac{a_k}{k^2}=c\]for some $c\neq 0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 63. Problem 282 - Score 90
- Site: https://www.erdosproblems.com/282
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subseteq \mathbb{N}$ be an infinite set and consider the following greedy algorithm for a rational $x\in (0,1)$: choose the minimal $n\in A$ such that $n\geq 1/x$ and repeat with $x$ replaced by $x-\frac{1}{n}$. If this terminates after finitely many steps then this produces a representation...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 64. Problem 10 - Score 90
- Site: https://www.erdosproblems.com/10
- Tags: number theory, additive basis, primes
- Prize: no; formalized: yes; OEIS: A387053
- Statement: Is there some $k$ such that every large integer is the sum of a prime and at most $k$ powers of 2?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, additive basis, and primes) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 65. Problem 1199 - Score 90
- Site: https://www.erdosproblems.com/1199
- Tags: additive combinatorics, ramsey theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Is it true that in any $2$-colouring of $\mathbb{N}$ there exists an infinite set $A$ such that all elements of $A+A$ are the same colour?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and ramsey theory) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 66. Problem 9 - Score 90
- Site: https://www.erdosproblems.com/9
- Tags: number theory, additive basis, primes
- Prize: no; formalized: yes; OEIS: A006286
- Statement: Let $A$ be the set of all odd integers $\geq 1$ not of the form $p+2^{k}+2^l$ (where $k,l\geq 0$ and $p$ is prime). Is the upper density of $A$ positive?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, additive basis, and primes) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 67. Problem 172 - Score 89
- Site: https://www.erdosproblems.com/172
- Tags: additive combinatorics, ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that in any finite colouring of $\mathbb{N}$ there exist arbitrarily large finite $A$ such that all sums and products of distinct elements in $A$ are the same colour?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and ramsey theory) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 68. Problem 865 - Score 89
- Site: https://www.erdosproblems.com/865
- Tags: number theory, additive combinatorics
- Prize: no; formalized: yes; OEIS: possible
- Statement: There exists a constant $C>0$ such that, for all large $N$, if $A\subseteq \{1,\ldots,N\}$ has size at least $\frac{5}{8}N+C$ then there are distinct $a,b,c\in A$ such that $a+b,a+c,b+c\in A$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 69. Problem 1097 - Score 89
- Site: https://www.erdosproblems.com/1097
- Tags: number theory, additive combinatorics
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A$ be a set of $n$ integers. How many distinct $d$ can occur as the common difference of a three-term arithmetic progression in $A$? In particular, are there always $O(n^{3/2})$ many such $d$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has equivalent formulation, finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 70. Problem 158 - Score 89
- Site: https://www.erdosproblems.com/158
- Tags: sidon sets
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subset \mathbb{N}$ be an infinite set such that, for any $n$, there are most $2$ solutions to $a+b=n$ with $a\leq b$. Must\[\liminf_{N\to\infty}\frac{\lvert A\cap \{1,\ldots,N\}\rvert}{N^{1/2}}=0?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 71. Problem 400 - Score 89
- Site: https://www.erdosproblems.com/400
- Tags: number theory, factorials
- Prize: no; formalized: yes; OEIS: possible
- Statement: For any $k\geq 2$ let $g_k(n)$ denote the maximum value of\[(a_1+\cdots+a_k)-n\]where $a_1,\ldots,a_k$ are integers such that $a_1!\cdots a_k! \mid n!$. Can one show that\[\sum_{n\leq x}g_k(n) \sim c_k x\log x\]for some constant $c_k$? Is it true that there is a constant $c_k$ such that for almost...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 72. Problem 141 - Score 89
- Site: https://www.erdosproblems.com/141
- Tags: additive combinatorics, primes, arithmetic progressions
- Prize: no; formalized: yes; OEIS: A006560
- Statement: Let $k\geq 3$. Are there $k$ consecutive primes in arithmetic progression?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics, primes, and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 73. Problem 749 - Score 88
- Site: https://www.erdosproblems.com/749
- Tags: additive combinatorics
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\epsilon>0$. Does there exist $A\subseteq \mathbb{N}$ such that the lower density of $A+A$ is at least $1-\epsilon$ and yet $1_A\ast 1_A(n) \ll_\epsilon 1$ for all $n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 74. Problem 881 - Score 88
- Site: https://www.erdosproblems.com/881
- Tags: number theory, additive basis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subset\mathbb{N}$ be an additive basis of order $k$ which is minimal, in the sense that if $B\subset A$ is any infinite set then $A\backslash B$ is not a basis of order $k$. Must there exist an infinite $B\subset A$ such that $A\backslash B$ is a basis of order $k+1$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 75. Problem 41 - Score 88
- Site: https://www.erdosproblems.com/41
- Tags: number theory, sidon sets, additive combinatorics
- Prize: $500; formalized: yes; OEIS: none
- Statement: Let $A\subset\mathbb{N}$ be an infinite set such that the triple sums $a+b+c$ are all distinct for $a,b,c\in A$ (aside from the trivial coincidences). Is it true that\[\liminf \frac{\lvert A\cap \{1,\ldots,N\}\rvert}{N^{1/3}}=0?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory, sidon sets, and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 76. Problem 168 - Score 88
- Site: https://www.erdosproblems.com/168
- Tags: additive combinatorics
- Prize: no; formalized: yes; OEIS: A004059, A057561, A094708, A386439
- Statement: Let $F(N)$ be the size of the largest subset of $\{1,\ldots,N\}$ which does not contain any set of the form $\{n,2n,3n\}$. What is\[ \lim_{N\to \infty}\frac{F(N)}{N}?\]Is this limit irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 77. Problem 317 - Score 88
- Site: https://www.erdosproblems.com/317
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there some constant $c>0$ such that for every $n\geq 1$ there exists some $\delta_k\in \{-1,0,1\}$ for $1\leq k\leq n$ with\[0 \frac{1}{[1,\ldots,n]}\]whenever the left-hand side is not zero?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 78. Problem 319 - Score 88
- Site: https://www.erdosproblems.com/319
- Tags: number theory, unit fractions
- Prize: no; formalized: yes; OEIS: possible
- Statement: What is the size of the largest $A\subseteq \{1,\ldots,N\}$ such that there is a function $\delta:A\to \{-1,1\}$ such that\[\sum_{n\in A}\frac{\delta_n}{n}=0\]and\[\sum_{n\in A'}\frac{\delta_n}{n}\neq 0\]for all non-empty $A'\subsetneq A$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 79. Problem 33 - Score 87
- Site: https://www.erdosproblems.com/33
- Tags: number theory, additive basis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subset\mathbb{N}$ be such that every large integer can be written as $n^2+a$ for some $a\in A$ and $n\geq 0$. What is the smallest possible value of\[\limsup \frac{\lvert A\cap\{1,\ldots,N\}\rvert}{N^{1/2}}?\]Is\[\liminf \frac{\lvert A\cap\{1,\ldots,N\}\rvert}{N^{1/2}}>1?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 80. Problem 203 - Score 87
- Site: https://www.erdosproblems.com/203
- Tags: primes, covering systems
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there an integer $m\geq 1$ with $(m,6)=1$ such that none of $2^k3^\ell m+1$ are prime, for any $k,\ell\geq 0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (primes and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 81. Problem 700 - Score 87
- Site: https://www.erdosproblems.com/700
- Tags: number theory, binomial coefficients
- Prize: no; formalized: no; OEIS: A091963
- Statement: Let\[f(n)=\min_{1 n^{1/2}$?{/LI} {LI} Is it true that, for every composite $n$,\[f(n) \ll_A \frac{n}{(\log n)^A}\]for every $A>0$?{/LI} {/UL}
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 82. Problem 817 - Score 87
- Site: https://www.erdosproblems.com/817
- Tags: additive combinatorics
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $k\geq 3$ and define $g_k(n)$ to be the minimal $N$ such that $\{1,\ldots,N\}$ contains some $A$ of size $\lvert A\rvert=n$ such that\[\langle A\rangle = \left\{\sum_{a\in A}\epsilon_aa: \epsilon_a\in \{0,1\}\right\}\]contains no non-trivial $k$-term arithmetic progression. Estimate $g_k(n)$....
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 83. Problem 39 - Score 87
- Site: https://www.erdosproblems.com/39
- Tags: number theory, sidon sets, additive combinatorics
- Prize: $500; formalized: yes; OEIS: none
- Statement: Is there an infinite Sidon set $A\subset \mathbb{N}$ such that\[\lvert A\cap \{1\ldots,N\}\rvert \gg_\epsilon N^{1/2-\epsilon}\]for all $\epsilon>0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory, sidon sets, and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 84. Problem 562 - Score 87
- Site: https://www.erdosproblems.com/562
- Tags: graph theory, ramsey theory, hypergraphs
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $R_r(n)$ denote the $r$-uniform hypergraph Ramsey number: the minimal $m$ such that if we $2$-colour all edges of the complete $r$-uniform hypergraph on $m$ vertices then there must be some monochromatic copy of the complete $r$-uniform hypergraph on $n$ vertices. Prove that, for $r\geq...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory, ramsey theory, and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 85. Problem 1 - Score 86
- Site: https://www.erdosproblems.com/1
- Tags: number theory, additive combinatorics
- Prize: $500; formalized: yes; OEIS: A276661
- Statement: If $A\subseteq \{1,\ldots,N\}$ with $\lvert A\rvert=n$ is such that the subset sums $\sum_{a\in S}a$ are distinct for all $S\subseteq A$ then\[N \gg 2^{n}.\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, equivalent formulation, known-best bounds, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 86. Problem 573 - Score 86
- Site: https://www.erdosproblems.com/573
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: A006856
- Statement: Is it true that\[\mathrm{ex}(n;\{C_3,C_4\})\sim (n/2)^{3/2}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 87. Problem 478 - Score 86
- Site: https://www.erdosproblems.com/478
- Tags: number theory, factorials
- Prize: no; formalized: no; OEIS: A210184
- Statement: Let $p$ be a prime and\[A_p = \{ k! \pmod{p} : 1\leq k<p\}.\]Is it true that\[\lvert A_p\rvert \sim (1-\tfrac{1}{e})p?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, known-best bounds, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 88. Problem 864 - Score 86
- Site: https://www.erdosproblems.com/864
- Tags: number theory, sidon sets, additive combinatorics
- Prize: no; formalized: no; OEIS: A389182
- Statement: Let $A\subseteq \{1,\ldots N\}$ be a set such that there exists at most one $n$ with more than one solution to $n=a+b$ (with $a\leq b\in A$). Estimate the maximal possible size of $\lvert A\rvert$ - in particular, is it true that\[\lvert A\rvert \leq (1+o(1))\frac{2}{\sqrt{3}}N^{1/2}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, sidon sets, and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 89. Problem 812 - Score 86
- Site: https://www.erdosproblems.com/812
- Tags: graph theory, ramsey theory
- Prize: no; formalized: yes; OEIS: A059442
- Statement: Is it true that\[\frac{R(n+1)}{R(n)}\geq 1+c\]for some constant $c>0$, for all large $n$? Is it true that\[R(n+1)-R(n) \gg n^2?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 90. Problem 789 - Score 86
- Site: https://www.erdosproblems.com/789
- Tags: additive combinatorics
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $h(n)$ be maximal such that if $A\subseteq \mathbb{Z}$ with $\lvert A\rvert=n$ then there is $B\subseteq A$ with $\lvert B\rvert \geq h(n)$ such that if $a_1+\cdots+a_r=b_1+\cdots+b_s$ with $a_i,b_i\in B$ then $r=s$. Estimate $h(n)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 91. Problem 30 - Score 86
- Site: https://www.erdosproblems.com/30
- Tags: number theory, sidon sets, additive combinatorics
- Prize: $1000; formalized: yes; OEIS: A143824, A227590, A003022
- Statement: Let $h(N)$ be the maximum size of a Sidon set in $\{1,\ldots,N\}$. Is it true that, for every $\epsilon>0$,\[h(N) = N^{1/2}+O_\epsilon(N^\epsilon)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (number theory, sidon sets, and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 92. Problem 731 - Score 85
- Site: https://www.erdosproblems.com/731
- Tags: number theory, binomial coefficients
- Prize: no; formalized: no; OEIS: A006197
- Statement: Find some reasonable function $f(n)$ such that, for almost all integers $n$, the least integer $m$ such that $m\nmid \binom{2n}{n}$ satisfies\[m\sim f(n).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 93. Problem 272 - Score 85
- Site: https://www.erdosproblems.com/272
- Tags: additive combinatorics, arithmetic progressions
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $N\geq 1$. What is the largest $t$ such that there are $A_1,\ldots,A_t\subseteq \{1,\ldots,N\}$ with $A_i\cap A_j$ a non-empty arithmetic progression for all $i\neq j$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 94. Problem 773 - Score 85
- Site: https://www.erdosproblems.com/773
- Tags: number theory, sidon sets, squares
- Prize: no; formalized: no; OEIS: A390813
- Statement: What is the size of the largest Sidon subset $A\subseteq\{1,2^2,\ldots,N^2\}$? Is it $N^{1-o(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, sidon sets, and squares) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 95. Problem 291 - Score 85
- Site: https://www.erdosproblems.com/291
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: A110566
- Statement: Let $n\geq 1$ and define $L_n$ to be the least common multiple of $\{1,\ldots,n\}$ and $a_n$ by\[\sum_{1\leq k\leq n}\frac{1}{k}=\frac{a_n}{L_n}.\]Is it true that $(a_n,L_n)=1$ and $(a_n,L_n)>1$ both occur for infinitely many $n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 96. Problem 468 - Score 85
- Site: https://www.erdosproblems.com/468
- Tags: number theory, divisors
- Prize: no; formalized: no; OEIS: A167485, A387502, A387503
- Statement: For any $n$ let $D_n$ be the set of sums of the shape $d_1,d_1+d_2,d_1+d_2+d_3,\ldots$ where $1<d_1<d_2<\cdots$ are the divisors of $n$. What is the size of $D_n\backslash \cup_{m<n}D_m$? If $f(N)$ is the minimal $n$ such that $N\in D_n$ then is it true that $f(N)=o(N)$? Perhaps just for almost all...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 97. Problem 1085 - Score 85
- Site: https://www.erdosproblems.com/1085
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: A186705
- Statement: Let $f_d(n)$ be minimal such that, in any set of $n$ points in $\mathbb{R}^d$, there exist at most $f_d(n)$ pairs of points which distance $1$ apart. Estimate $f_d(n)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, known-best bounds, finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 98. Problem 413 - Score 84
- Site: https://www.erdosproblems.com/413
- Tags: number theory, iterated functions
- Prize: no; formalized: yes; OEIS: A005236
- Statement: Let $\omega(n)$ count the number of distinct primes dividing $n$. Are there infinitely many $n$ such that, for all $m 0$ such that there are infinitely many $n$ where $m+\epsilon \omega(m)\leq n$ for all $m<n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 99. Problem 52 - Score 84
- Site: https://www.erdosproblems.com/52
- Tags: number theory, additive combinatorics
- Prize: $250; formalized: yes; OEIS: A263996
- Statement: Let $A$ be a finite set of integers. Is it true that for every $\epsilon>0$\[\max( \lvert A+A\rvert,\lvert AA\rvert)\gg_\epsilon \lvert A\rvert^{2-\epsilon}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 100. Problem 279 - Score 84
- Site: https://www.erdosproblems.com/279
- Tags: number theory, covering systems, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $k\geq 3$. Is there a choice of congruence classes $a_p\pmod{p}$ for every prime $p$ such that all sufficiently large integers can be written as $a_p+tp$ for some prime $p$ and integer $t\geq k$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, covering systems, and primes) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 101. Problem 32 - Score 84
- Site: https://www.erdosproblems.com/32
- Tags: number theory, additive basis
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a set $A\subset\mathbb{N}$ such that\[\lvert A\cap\{1,\ldots,N\}\rvert = o((\log N)^2)\]and such that every large integer can be written as $p+a$ for some prime $p$ and $a\in A$? Can the bound $O(\log N)$ be achieved? Must such an $A$ satisfy\[\liminf \frac{\lvert...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 102. Problem 836 - Score 84
- Site: https://www.erdosproblems.com/836
- Tags: graph theory, hypergraphs, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $r\geq 2$ and $G$ be a $r$-uniform hypergraph with chromatic number $3$ (that is, there is a $3$-colouring of the vertices of $G$ such that no edge is monochromatic). Suppose any two edges of $G$ have a non-empty intersection. Must $G$ contain $O(r^2)$ many vertices? Must there be two edges...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory, hypergraphs, and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 103. Problem 160 - Score 84
- Site: https://www.erdosproblems.com/160
- Tags: additive combinatorics, arithmetic progressions
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $h(N)$ be the smallest $k$ such that $\{1,\ldots,N\}$ can be coloured with $k$ colours so that every four-term arithmetic progression must contain at least three distinct colours. Estimate $h(N)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 104. Problem 571 - Score 83
- Site: https://www.erdosproblems.com/571
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: none
- Statement: Show that for any rational $\alpha \in [1,2)$ there exists a bipartite graph $G$ such that\[\mathrm{ex}(n;G)\asymp n^{\alpha}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 105. Problem 393 - Score 83
- Site: https://www.erdosproblems.com/393
- Tags: number theory, factorials
- Prize: no; formalized: no; OEIS: A388302
- Statement: Let $f(n)$ denote the minimal $m\geq 1$ such that\[n! = a_1\cdots a_t\]with $a_1<\cdots <a_t=a_1+m$. What is the behaviour of $f(n)$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 106. Problem 359 - Score 83
- Site: https://www.erdosproblems.com/359
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A002048
- Statement: Let $a_1 0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 107. Problem 346 - Score 83
- Site: https://www.erdosproblems.com/346
- Tags: number theory, complete sequences
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A=\{1\leq a_1 0$ and all $n$ then\[\lim_n \frac{a_{n+1}}{a_n}=\frac{1+\sqrt{5}}{2}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and complete sequences) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 108. Problem 479 - Score 83
- Site: https://www.erdosproblems.com/479
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A036236, A015919, A050259, A015921, A006521, A006517, A015940
- Statement: Is it true that, for all $k\neq 1$, there are infinitely many $n$ such that $2^n\equiv k\pmod{n}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 109. Problem 389 - Score 83
- Site: https://www.erdosproblems.com/389
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A375071
- Statement: Is it true that for every $n\geq 1$ there is a $k$ such that\[n(n+1)\cdots(n+k-1)\mid (n+k)\cdots (n+2k-1)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 110. Problem 422 - Score 82
- Site: https://www.erdosproblems.com/422
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A005185
- Statement: Let $f(1)=f(2)=1$ and for $n>2$\[f(n) = f(n-f(n-1))+f(n-f(n-2)).\]Does $f(n)$ miss infinitely many integers? What is its behaviour?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 111. Problem 566 - Score 82
- Site: https://www.erdosproblems.com/566
- Tags: graph theory, ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $G$ be such that any subgraph on $k$ vertices has at most $2k-3$ edges. Is it true that, if $H$ has $m$ edges and no isolated vertices, then\[R(G,H)\ll m?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 112. Problem 738 - Score 82
- Site: https://www.erdosproblems.com/738
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: If $G$ has infinite chromatic number and is triangle-free (contains no $K_3$) then must $G$ contain every tree as an induced subgraph?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 113. Problem 1192 - Score 82
- Site: https://www.erdosproblems.com/1192
- Tags: additive combinatorics, additive basis
- Prize: no; formalized: no; OEIS: possible
- Statement: For $A\subset \mathbb{N}$ let $f_r(n)$ count the number of solutions to $n=a_1+\cdots+a_r$ with $a_i\in A$. Does there exist, for all $r\geq 2$, a basis $A$ of order $r$ (so that $f_r(n)>0$ for all large $n$) such that\[\sum_{n\leq x}f_r(n)^2 \ll x\]for all $x$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 114. Problem 212 - Score 82
- Site: https://www.erdosproblems.com/212
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a dense subset of $\mathbb{R}^2$ such that all pairwise distances are rational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 115. Problem 409 - Score 82
- Site: https://www.erdosproblems.com/409
- Tags: number theory, iterated functions
- Prize: no; formalized: yes; OEIS: A039651, A229487
- Statement: How many iterations of $n\mapsto \phi(n)+1$ are needed before a prime is reached? Can infinitely many $n$ reach the same prime? What is the density of $n$ which reach any fixed prime?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 116. Problem 414 - Score 81
- Site: https://www.erdosproblems.com/414
- Tags: number theory, iterated functions
- Prize: no; formalized: yes; OEIS: A064491
- Statement: Let $h_1(n)=h(n)=n+\tau(n)$ (where $\tau(n)$ counts the number of divisors of $n$) and $h_k(n)=h(h_{k-1}(n))$. Is it true, for any $m,n$, there exist $i$ and $j$ such that $h_i(m)=h_j(n)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 117. Problem 412 - Score 81
- Site: https://www.erdosproblems.com/412
- Tags: number theory, iterated functions
- Prize: no; formalized: yes; OEIS: A007497, A051572
- Statement: Let $\sigma_1(n)=\sigma(n)$, the sum of divisors function, and $\sigma_k(n)=\sigma(\sigma_{k-1}(n))$. Is it true that, for every $m,n\geq 2$, there exist some $i,j$ such that $\sigma_i(m)=\sigma_j(n)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 118. Problem 61 - Score 81
- Site: https://www.erdosproblems.com/61
- Tags: graph theory
- Prize: no; formalized: yes; OEIS: none
- Statement: For any graph $H$ is there some $c=c(H)>0$ such that every graph $G$ on $n$ vertices that does not contain $H$ as an induced subgraph contains either a complete graph or independent set on $\geq n^c$ vertices?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 119. Problem 349 - Score 81
- Site: https://www.erdosproblems.com/349
- Tags: number theory, complete sequences
- Prize: no; formalized: yes; OEIS: none
- Statement: For what values of $t,\alpha \in (0,\infty)$ is the sequence $\lfloor t\alpha^n\rfloor$ complete (that is, all sufficiently large integers are the sum of distinct integers of the form $\lfloor t\alpha^n\rfloor$)?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and complete sequences) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 120. Problem 624 - Score 81
- Site: https://www.erdosproblems.com/624
- Tags: combinatorics
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $X$ be a finite set of size $n$ and $H(n)$ be such that there is a function $f:\{A : A\subseteq X\}\to X$ so that for every $Y\subseteq X$ with $\lvert Y\rvert \geq H(n)$ we have\[\{ f(A) : A\subseteq Y\}=X.\]Prove that\[H(n)-\log_2 n \to \infty.\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 121. Problem 348 - Score 81
- Site: https://www.erdosproblems.com/348
- Tags: number theory, complete sequences
- Prize: no; formalized: yes; OEIS: none
- Statement: For what values of $0\leq m<n$ is there a complete sequence $A=\{a_1\leq a_2\leq \cdots\}$ of integers such that {UL} {LI} $A$ remains complete after removing any $m$ elements, but {/LI} {LI} $A$ is not complete after removing any $n$ elements? {/LI} {/UL}
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and complete sequences) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 122. Problem 138 - Score 81
- Site: https://www.erdosproblems.com/138
- Tags: additive combinatorics
- Prize: $500; formalized: yes; OEIS: A005346
- Statement: Let the van der Waerden number $W(k)$ be such that whenever $N\geq W(k)$ and $\{1,\ldots,N\}$ is $2$-coloured there must exist a monochromatic $k$-term arithmetic progression. Improve the bounds for $W(k)$ - for example, prove that $W(k)^{1/k}\to \infty$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 123. Problem 714 - Score 80
- Site: https://www.erdosproblems.com/714
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: possible
- Statement: Is it true that\[\mathrm{ex}(n; K_{r,r}) \gg n^{2-1/r}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 124. Problem 320 - Score 80
- Site: https://www.erdosproblems.com/320
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: A072207
- Statement: Let $S(N)$ count the number of distinct sums of the form $\sum_{n\in A}\frac{1}{n}$ for $A\subseteq \{1,\ldots,N\}$. Estimate $S(N)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 125. Problem 148 - Score 80
- Site: https://www.erdosproblems.com/148
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: A076393, A006585
- Statement: Let $F(k)$ be the number of solutions to\[ 1= \frac{1}{n_1}+\cdots+\frac{1}{n_k},\]where $1\leq n_1<\cdots<n_k$ are distinct integers. Find good estimates for $F(k)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 126. Problem 640 - Score 80
- Site: https://www.erdosproblems.com/640
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $k\geq 3$. Does there exist some $f(k)$ such that if a graph $G$ has chromatic number $\geq f(k)$ then $G$ must contain some odd cycle whose vertices span a graph of chromatic number $\geq k$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 127. Problem 840 - Score 80
- Site: https://www.erdosproblems.com/840
- Tags: additive combinatorics, sidon sets
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f(N)$ be the size of the largest quasi-Sidon subset $A\subset\{1,\ldots,N\}$, where we say that $A$ is quasi-Sidon if\[\lvert A+A\rvert=(1+o(1))\binom{\lvert A\rvert}{2}.\]How does $f(N)$ grow?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 128. Problem 626 - Score 80
- Site: https://www.erdosproblems.com/626
- Tags: graph theory, chromatic number, cycles
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k\geq 4$ and $g_k(n)$ denote the largest $m$ such that there is a graph on $n$ vertices with chromatic number $k$ and girth $>m$ (i.e. contains no cycle of length $\leq m$). Does\[\lim_{n\to \infty}\frac{g_k(n)}{\log n}\]exist? Conversely, if $h^{(m)}(n)$ is the maximal chromatic number of a...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory, chromatic number, and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 129. Problem 1100 - Score 79
- Site: https://www.erdosproblems.com/1100
- Tags: number theory, divisors
- Prize: no; formalized: no; OEIS: A325864
- Statement: If $1=d_1<\cdots<d_{\tau(n)}=n$ are the divisors of $n$, then let $\tau_\perp(n)$ count the number of $i$ for which $(d_i,d_{i+1})=1$. Is it true that $\tau_\perp(n)/\omega(n)\to \infty$ for almost all $n$? Is it true that\[\tau_\perp(n)< \exp((\log n)^{o(1)})\]for all $n$? Let\[g(k) =...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 130. Problem 1003 - Score 79
- Site: https://www.erdosproblems.com/1003
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A001274
- Statement: Are there infinitely many solutions to $\phi(n)=\phi(n+1)$, where $\phi$ is the Euler totient function?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 131. Problem 1065 - Score 79
- Site: https://www.erdosproblems.com/1065
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A074781, A339465
- Statement: Are there infinitely many primes $p$ such that $p=2^kq+1$ for some prime $q$ and $k\geq 0$? Or $p=2^k3^lq+1$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 132. Problem 913 - Score 79
- Site: https://www.erdosproblems.com/913
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A359747
- Statement: Are there infinitely many $n$ such that if\[n(n+1) = \prod_i p_i^{k_i}\]is the factorisation into distinct primes then all exponents $k_i$ are distinct?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 133. Problem 145 - Score 79
- Site: https://www.erdosproblems.com/145
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A005117
- Statement: Let $s_1<s_2<\cdots$ be the sequence of squarefree numbers. Is it true that, for any $\alpha \geq 0$,\[\lim_{x\to \infty}\frac{1}{x}\sum_{s_n\leq x}(s_{n+1}-s_n)^\alpha\]exists?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 134. Problem 91 - Score 79
- Site: https://www.erdosproblems.com/91
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: A186704
- Statement: Let $n$ be a sufficiently large integer. Suppose $A\subset \mathbb{R}^2$ has $\lvert A\rvert=n$ and minimises the number of distinct distances between points in $A$. Prove that there are at least two (and probably many) such $A$ which are non-similar.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 135. Problem 503 - Score 78
- Site: https://www.erdosproblems.com/503
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: A175769
- Statement: What is the size of the largest $A\subseteq \mathbb{R}^d$ such that every three points from $A$ determine an isosceles triangle? That is, for any three points $x,y,z$ from $A$, at least two of the distances $\lvert x-y\rvert,\lvert y-z\rvert,\lvert x-z\rvert$ are equal.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 136. Problem 66 - Score 78
- Site: https://www.erdosproblems.com/66
- Tags: number theory, additive basis
- Prize: $500; formalized: yes; OEIS: none
- Statement: Is there $A\subseteq \mathbb{N}$ such that\[\lim_{n\to \infty}\frac{1_A\ast 1_A(n)}{\log n}\]exists and is $\neq 0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 137. Problem 693 - Score 78
- Site: https://www.erdosproblems.com/693
- Tags: number theory, divisors
- Prize: no; formalized: no; OEIS: A391118
- Statement: Let $k\geq 2$ and $n$ be sufficiently large depending on $k$. Let $A=\{a_1<a_2<\cdots \}$ be the set of those integers in $[n,n^k]$ which have a divisor in $(n,2n)$. Estimate\[\max_{i} a_{i+1}-a_i.\]Is this $\leq (\log n)^{O(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 138. Problem 301 - Score 78
- Site: https://www.erdosproblems.com/301
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: A390394
- Statement: Let $f(N)$ be the size of the largest $A\subseteq \{1,\ldots,N\}$ such that there are no solutions to\[\frac{1}{a}= \frac{1}{b_1}+\cdots+\frac{1}{b_k}\]with distinct $a,b_1,\ldots,b_k\in A$? Estimate $f(N)$. In particular, is it true that $f(N)=(\tfrac{1}{2}+o(1))N$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 139. Problem 530 - Score 78
- Site: https://www.erdosproblems.com/530
- Tags: number theory, sidon sets
- Prize: no; formalized: no; OEIS: A143824
- Statement: Let $\ell(N)$ be maximal such that in any finite set $A\subset \mathbb{R}$ of size $N$ there exists a Sidon subset $S$ of size $\ell(N)$ (i.e. the only solutions to $a+b=c+d$ in $S$ are the trivial ones). Determine the order of $\ell(N)$. In particular, is it true that $\ell(N)\sim N^{1/2}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 140. Problem 500 - Score 78
- Site: https://www.erdosproblems.com/500
- Tags: graph theory, hypergraphs, turan number
- Prize: $500; formalized: no; OEIS: A140462
- Statement: What is $\mathrm{ex}_3(n,K_4^3)$? That is, the largest number of $3$-edges which can placed on $n$ vertices so that there exists no $K_4^3$, a set of 4 vertices which is covered by all 4 possible $3$-edges.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory, hypergraphs, and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 141. Problem 410 - Score 77
- Site: https://www.erdosproblems.com/410
- Tags: number theory, iterated functions
- Prize: no; formalized: yes; OEIS: A007497
- Statement: Let $\sigma_1(n)=\sigma(n)$, the sum of divisors function, and $\sigma_k(n)=\sigma(\sigma_{k-1}(n))$. Is it true that for all $n\geq 2$\[\lim_{k\to \infty} \sigma_k(n)^{1/k}=\infty?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 142. Problem 938 - Score 77
- Site: https://www.erdosproblems.com/938
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A001694
- Statement: Let $A=\{n_1<n_2<\cdots\}$ be the sequence of powerful numbers (if $p\mid n$ then $p^2\mid n$). Are there only finitely many three-term progressions of consecutive terms $n_k,n_{k+1},n_{k+2}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 143. Problem 567 - Score 77
- Site: https://www.erdosproblems.com/567
- Tags: graph theory, ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $G$ be either $Q_3$ or $K_{3,3}$ or $H_5$ (the last formed by adding two vertex-disjoint chords to $C_5$). Is it true that, if $H$ has $m$ edges and no isolated vertices, then\[R(G,H)\ll m?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 144. Problem 424 - Score 77
- Site: https://www.erdosproblems.com/424
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A005244
- Statement: Let $a_1=2$ and $a_2=3$ and continue the sequence by appending to $a_1,\ldots,a_n$ all possible values of $a_ia_j-1$ with $i\neq j$. Is it true that the set of integers which eventually appear has positive density?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 145. Problem 342 - Score 77
- Site: https://www.erdosproblems.com/342
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A002858
- Statement: With $a_1=1$ and $a_2=2$ let $a_{n+1}$ for $n\geq 2$ be the least integer $>a_n$ which can be expressed uniquely as $a_i+a_j$ for $i<j\leq n$. What can be said about this sequence? Do infinitely many pairs $a,a+2$ occur? Does this sequence eventually have periodic differences? Is the density $0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 146. Problem 701 - Score 77
- Site: https://www.erdosproblems.com/701
- Tags: combinatorics, intersecting family
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\mathcal{F}$ be a family of sets closed under taking subsets (i.e. if $B\subseteq A\in\mathcal{F}$ then $B\in \mathcal{F}$). There exists some element $x$ such that whenever $\mathcal{F}'\subseteq \mathcal{F}$ is an intersecting subfamily we have\[\lvert \mathcal{F}'\rvert \leq \lvert \{ A\in...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics and intersecting family) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 147. Problem 564 - Score 76
- Site: https://www.erdosproblems.com/564
- Tags: graph theory, ramsey theory, hypergraphs
- Prize: $500; formalized: yes; OEIS: possible
- Statement: Let $R_3(n)$ be the minimal $m$ such that if the edges of the $3$-uniform hypergraph on $m$ vertices are $2$-coloured then there is a monochromatic copy of the complete $3$-uniform hypergraph on $n$ vertices. Is there some constant $c>0$ such that\[R_3(n) \geq 2^{2^{cn}}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory, ramsey theory, and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 148. Problem 156 - Score 76
- Site: https://www.erdosproblems.com/156
- Tags: sidon sets
- Prize: no; formalized: no; OEIS: A382397
- Statement: Does there exist a maximal Sidon set $A\subset \{1,\ldots,N\}$ of size $O(N^{1/3})$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 149. Problem 60 - Score 76
- Site: https://www.erdosproblems.com/60
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: A006855
- Statement: Does every graph on $n$ vertices with $>\mathrm{ex}(n;C_4)$ edges contain $\gg n^{1/2}$ many copies of $C_4$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 150. Problem 576 - Score 76
- Site: https://www.erdosproblems.com/576
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $Q_k$ be the $k$-dimensional hypercube graph (so that $Q_k$ has $2^k$ vertices and $k2^{k-1}$ edges). Determine the behaviour of\[\mathrm{ex}(n;Q_k).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 151. Problem 1016 - Score 76
- Site: https://www.erdosproblems.com/1016
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: A105206
- Statement: Let $h(n)$ be minimal such that there is a graph on $n$ vertices with $n+h(n)$ edges which contains a cycle on $k$ vertices, for all $3\leq k\leq n$. Estimate $h(n)$. In particular, is it true that\[h(n) \geq \log_2n+\log_*n-O(1),\]where $\log_*n$ is the iterated logarithmic function?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 152. Problem 271 - Score 76
- Site: https://www.erdosproblems.com/271
- Tags: additive combinatorics, arithmetic progressions
- Prize: no; formalized: no; OEIS: A005487
- Statement: Let $A(n)=\{a_0<a_1<\cdots\}$ be the sequence defined by $a_0=0$ and $a_1=n$, and for $k\geq 1$ define $a_{k+1}$ as the least positive integer such that there is no three-term arithmetic progression in $\{a_0,\ldots,a_{k+1}\}$. Can the $a_k$ be explicitly determined? How fast do they grow?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 153. Problem 643 - Score 76
- Site: https://www.erdosproblems.com/643
- Tags: graph theory, hypergraphs
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n;t)$ be minimal such that if a $t$-uniform hypergraph on $n$ vertices contains at least $f(n;t)$ edges then there must be four edges $A,B,C,D$ such that\[A\cup B= C\cup D\]and\[A\cap B=C\cap D=\emptyset.\]Estimate $f(n;t)$ - in particular, is it true that for $t\geq...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 154. Problem 985 - Score 75
- Site: https://www.erdosproblems.com/985
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A002233, A219429, A103309
- Statement: Is it true that, for every prime $p$, there is a prime $q<p$ which is a primitive root modulo $p$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 155. Problem 936 - Score 75
- Site: https://www.erdosproblems.com/936
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A146968
- Statement: Are\[2^n\pm 1\]and\[n!\pm 1\]powerful (i.e. if $p\mid m$ then $p^2\mid m$) for only finitely many $n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 156. Problem 385 - Score 75
- Site: https://www.erdosproblems.com/385
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A322292
- Statement: Let\[F(n) = \max_{\substack{m n$ for all sufficiently large $n$? Does $F(n)-n\to \infty$ as $n\to\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 157. Problem 371 - Score 75
- Site: https://www.erdosproblems.com/371
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A070089
- Statement: Let $P(n)$ denote the largest prime factor of $n$. Show that the set of $n$ with $P(n)<P(n+1)$ has density $1/2$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 158. Problem 968 - Score 75
- Site: https://www.erdosproblems.com/968
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A387591
- Statement: Let $u_n=p_n/n$, where $p_n$ is the $n$th prime. Does the set of $n$ such that $u_n<u_{n+1}$ have positive density?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 159. Problem 96 - Score 75
- Site: https://www.erdosproblems.com/96
- Tags: geometry, distances, convex
- Prize: no; formalized: yes; OEIS: possible
- Statement: If $n$ points in $\mathbb{R}^2$ form a convex polygon then there are $O(n)$ many pairs which are distance $1$ apart.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry, distances, and convex) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 160. Problem 421 - Score 74
- Site: https://www.erdosproblems.com/421
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A389544, A390848
- Statement: Is there a sequence $1\leq d_1<d_2<\cdots$ with density $1$ such that all products $\prod_{u\leq i\leq v}d_i$ are distinct?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 161. Problem 417 - Score 74
- Site: https://www.erdosproblems.com/417
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A264810, A061070
- Statement: Let\[V'(x)=\#\{\phi(m) : 1\leq m\leq x\}\]and\[V(x)=\#\{\phi(m) \leq x : 1\leq m\}.\]Does $\lim V(x)/V'(x)$ exist? Is it $>1$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 162. Problem 1073 - Score 74
- Site: https://www.erdosproblems.com/1073
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A256519
- Statement: Let $A(x)$ count the number of composite $u<x$ such that $n!+1\equiv 0\pmod{u}$ for some $n$. Is it true that $A(x)\leq x^{o(1)}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 163. Problem 324 - Score 74
- Site: https://www.erdosproblems.com/324
- Tags: number theory, powers
- Prize: no; formalized: yes; OEIS: none
- Statement: Does there exist a polynomial $f(x)\in\mathbb{Z}[x]$ such that all the sums $f(a)+f(b)$ with $a<b$ nonnegative integers are distinct?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and powers) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 164. Problem 932 - Score 74
- Site: https://www.erdosproblems.com/932
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A387864
- Statement: Let $p_k$ denote the $k$th prime. For infinitely many $r$ there are at least two integers $p_r<n<p_{r+1}$ all of whose prime factors are $<p_{r+1}-p_r$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 165. Problem 1056 - Score 74
- Site: https://www.erdosproblems.com/1056
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A060427
- Statement: Let $k\geq 2$. Does there exist a prime $p$ and consecutive intervals $I_1,\ldots,I_k$ such that\[\prod_{n\in I_i}n \equiv 1\pmod{p}\]for all $1\leq i\leq k$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 166. Problem 979 - Score 73
- Site: https://www.erdosproblems.com/979
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A385316
- Statement: Let $k\geq 2$, and let $f_k(n)$ count the number of solutions to\[n=p_1^k+\cdots+p_k^k,\]where the $p_i$ are prime numbers. Is it true that $\limsup f_k(n)=\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 167. Problem 1084 - Score 73
- Site: https://www.erdosproblems.com/1084
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: A045945
- Statement: Let $f_d(n)$ be minimal such that in any collection of $n$ points in $\mathbb{R}^d$, all of distance at least $1$ apart, there are at most $f_d(n)$ many pairs of points which are distance $1$ apart. Estimate $f_d(n)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 168. Problem 28 - Score 73
- Site: https://www.erdosproblems.com/28
- Tags: number theory, additive basis
- Prize: $500; formalized: yes; OEIS: none
- Statement: If $A\subseteq \mathbb{N}$ is such that $A+A$ contains all but finitely many integers then $\limsup 1_A\ast 1_A(n)=\infty$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 169. Problem 901 - Score 73
- Site: https://www.erdosproblems.com/901
- Tags: combinatorics, hypergraphs
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $m(n)$ be minimal such that there is an $n$-uniform hypergraph with $m(n)$ edges which is $3$-chromatic. Estimate $m(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 170. Problem 1158 - Score 73
- Site: https://www.erdosproblems.com/1158
- Tags: hypergraphs, turan number
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $K_{t}(r)$ be the complete $t$-partite $t$-uniform hypergraph with $r$ vertices in each class. Is it true that\[\mathrm{ex}_t(n,K_t(r)) \geq n^{t-r^{1-t}-o(1)}\]for all $t,r$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (hypergraphs and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 171. Problem 791 - Score 73
- Site: https://www.erdosproblems.com/791
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: A066063
- Statement: Let $g(n)$ be minimal such that there exists $A\subseteq \{0,\ldots,n\}$ of size $g(n)$ with $\{0,\ldots,n\}\subseteq A+A$. Estimate $g(n)$. In particular is it true that $g(n)\sim 2n^{1/2}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 172. Problem 302 - Score 72
- Site: https://www.erdosproblems.com/302
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: A390395
- Statement: Let $f(N)$ be the size of the largest $A\subseteq \{1,\ldots,N\}$ such that there are no solutions to\[\frac{1}{a}= \frac{1}{b}+\frac{1}{c}\]with distinct $a,b,c\in A$? Estimate $f(N)$. In particular, is $f(N)=(\tfrac{1}{2}+o(1))N$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 173. Problem 327 - Score 72
- Site: https://www.erdosproblems.com/327
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: A384927
- Statement: Suppose $A\subseteq \{1,\ldots,N\}$ is such that if $a,b\in A$ and $a\neq b$ then $a+b\nmid ab$. Can $A$ be 'substantially more' than the odd numbers? What if $a,b\in A$ with $a\neq b$ implies $a+b\nmid 2ab$? Must $\lvert A\rvert=o(N)$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 174. Problem 98 - Score 72
- Site: https://www.erdosproblems.com/98
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $h(n)$ be such that any $n$ points in $\mathbb{R}^2$, with no three on a line and no four on a circle, determine at least $h(n)$ distinct distances. Does $h(n)/n\to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 175. Problem 695 - Score 72
- Site: https://www.erdosproblems.com/695
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A061092
- Statement: Let $p_1<p_2<\cdots$ be a sequence of primes such that $p_{i+1}\equiv 1\pmod{p_i}$. Is it true that\[\lim_k p_k^{1/k}=\infty?\]Does there exist such a sequence with\[p_k \leq \exp(k(\log k)^{1+o(1)})?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 176. Problem 193 - Score 72
- Site: https://www.erdosproblems.com/193
- Tags: geometry
- Prize: no; formalized: yes; OEIS: A231255
- Statement: Let $S\subseteq \mathbb{Z}^3$ be a finite set and let $A=\{a_1,a_2,\ldots,\}\subset \mathbb{Z}^3$ be an infinite $S$-walk, so that $a_{i+1}-a_i\in S$ for all $i$. Must $A$ contain three collinear points?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 177. Problem 1072 - Score 72
- Site: https://www.erdosproblems.com/1072
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A073944, A072937, A154554
- Statement: For any prime $p$, let $f(p)$ be the least integer such that $f(p)!+1\equiv 0\pmod{p}$. Is it true that there are infinitely many $p$ for which $f(p)=p-1$? Is it true that $f(p)/p\to 0$ for almost all $p$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 178. Problem 770 - Score 71
- Site: https://www.erdosproblems.com/770
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A263647
- Statement: Let $h(n)$ be minimal such that $2^n-1,3^n-1,\ldots,h(n)^n-1$ are mutually coprime. Does, for every prime $p$, the density $\delta_p$ of integers with $h(n)=p$ exist? Does $\liminf h(n)=\infty$? Is it true that if $p$ is the greatest prime such that $p-1\mid n$ and $p>n^\epsilon$ then $h(n)=p$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 179. Problem 857 - Score 71
- Site: https://www.erdosproblems.com/857
- Tags: combinatorics
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $m=m(n,k)$ be minimal such that in any collection of sets $A_1,\ldots,A_m\subseteq \{1,\ldots,n\}$ there must exist a sunflower of size $k$ - that is, some collection of $k$ of the $A_i$ which pairwise have the same intersection. Estimate $m(n,k)$, or even better, give an asymptotic formula.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 180. Problem 572 - Score 71
- Site: https://www.erdosproblems.com/572
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: possible
- Statement: Show that for $k\geq 3$\[\mathrm{ex}(n;C_{2k})\gg n^{1+\frac{1}{k}}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 181. Problem 450 - Score 71
- Site: https://www.erdosproblems.com/450
- Tags: number theory, divisors
- Prize: no; formalized: no; OEIS: none
- Statement: How large must $y=y(\epsilon,n)$ be such that the number of integers in $(x,x+y)$ with a divisor in $(n,2n)$ is at most $\epsilon y$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and divisors) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 182. Problem 335 - Score 71
- Site: https://www.erdosproblems.com/335
- Tags: number theory, additive combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: Let $d(A)$ denote the density of $A\subseteq \mathbb{N}$. Characterise those $A,B\subseteq \mathbb{N}$ with positive density such that\[d(A+B)=d(A)+d(B).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 183. Problem 278 - Score 71
- Site: https://www.erdosproblems.com/278
- Tags: number theory, covering systems
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A=\{n_1<\cdots<n_r\}$ be a finite set of positive integers. What is the maximum density of integers covered by a suitable choice of congruences $a_i\pmod{n_i}$? Is the minimum density achieved when all the $a_i$ are equal?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 184. Problem 1178 - Score 71
- Site: https://www.erdosproblems.com/1178
- Tags: graph theory, hypergraphs
- Prize: no; formalized: no; OEIS: none
- Statement: For $r\geq 3$ let $d_r(e)$ be the minimal $d$ such that\[\mathrm{ex}_r(n,\mathcal{F})=o(n^2),\]where $\mathcal{F}$ is the family of $r$-uniform hypergraphs on $d$ vertices with $e$ edges. Prove that\[d_r(e)=(r-2)e+3\]for all $r,e\geq 3$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 185. Problem 719 - Score 70
- Site: https://www.erdosproblems.com/719
- Tags: graph theory, hypergraphs
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $\mathrm{ex}_r(n;K_{r+1}^r)$ be the maximum number of $r$-edges that can be placed on $n$ vertices without forming a $K_{r+1}^r$ (the $r$-uniform complete graph on $r+1$ vertices). Is every $r$-hypergraph $G$ on $n$ vertices the union of at most $\mathrm{ex}_{r}(n;K_{r+1}^r)$ many copies of...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 186. Problem 404 - Score 70
- Site: https://www.erdosproblems.com/404
- Tags: number theory, factorials
- Prize: no; formalized: no; OEIS: none
- Statement: For which integers $a\geq 1$ and primes $p$ is there a finite upper bound on those $k$ such that there are $a=a_1<\cdots<a_n$ with\[p^k \mid (a_1!+\cdots+a_n!)?\]If $f(a,p)$ is the greatest such $k$, how does this function behave? Is there a prime $p$ and an infinite sequence $a_1<a_2<\cdots$ such...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and factorials) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 187. Problem 891 - Score 70
- Site: https://www.erdosproblems.com/891
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $2=p_1 k$ many prime factors?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 188. Problem 828 - Score 70
- Site: https://www.erdosproblems.com/828
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that, for any $a\in\mathbb{Z}$, there are infinitely many $n$ such that\[\phi(n) \mid n+a?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 189. Problem 208 - Score 70
- Site: https://www.erdosproblems.com/208
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A005117, A076259
- Statement: Let $s_1 0$ and large $n$,\[s_{n+1}-s_n \ll_\epsilon s_n^{\epsilon}?\]Is it true that\[s_{n+1}-s_n \leq (1+o(1))\frac{\pi^2}{6}\frac{\log s_n}{\log\log s_n}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 190. Problem 1061 - Score 70
- Site: https://www.erdosproblems.com/1061
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A110177
- Statement: How many solutions are there to\[\sigma(a)+\sigma(b)=\sigma(a+b)\]with $a+b\leq x$, where $\sigma$ is the sum of divisors function? Is it $\sim cx$ for some constant $c>0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 191. Problem 40 - Score 69
- Site: https://www.erdosproblems.com/40
- Tags: number theory, additive basis
- Prize: $500; formalized: yes; OEIS: none
- Statement: For what functions $g(N)\to \infty$ is it true that\[\lvert A\cap \{1,\ldots,N\}\rvert \gg \frac{N^{1/2}}{g(N)}\]implies $\limsup 1_A\ast 1_A(n)=\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 192. Problem 120 - Score 69
- Site: https://www.erdosproblems.com/120
- Tags: combinatorics
- Prize: $100; formalized: yes; OEIS: none
- Statement: Let $A\subseteq\mathbb{R}$ be an infinite set. Must there be a set $E\subset \mathbb{R}$ of positive measure which does not contain any set of the shape $aA+b$ for some $a,b\in\mathbb{R}$ and $a\neq 0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 193. Problem 642 - Score 69
- Site: https://www.erdosproblems.com/642
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be the maximal number of edges in a graph on $n$ vertices such that all cycles have more vertices than chords. Is it true that $f(n)\ll n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 194. Problem 1157 - Score 69
- Site: https://www.erdosproblems.com/1157
- Tags: hypergraphs, turan number
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $t,k,r\geq 2$. Let $\mathcal{F}$ be the family of all $r$-uniform hypergraphs with $k$ vertices and $s$ edges. Determine\[\mathrm{ex}_r(n,\mathcal{F}).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (hypergraphs and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 195. Problem 311 - Score 69
- Site: https://www.erdosproblems.com/311
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\delta(N)$ be the minimal non-zero value of $\lvert 1-\sum_{n\in A}\frac{1}{n}\rvert$ as $A$ ranges over all subsets of $\{1,\ldots,N\}$. Is it true that\[\delta(N)=e^{-(c+o(1))N}\]for some constant $c\in (0,1)$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 196. Problem 876 - Score 69
- Site: https://www.erdosproblems.com/876
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A=\{a_1<a_2<\cdots\}\subset \mathbb{N}$ be an infinite sum-free set - that is, there are no solutions to\[a=b_1+\cdots+b_r\]with $b_1<\cdots<b_r<a\in A$. How small can $a_{n+1}-a_n$ be? Is it possible that $a_{n+1}-a_n<n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 197. Problem 875 - Score 68
- Site: https://www.erdosproblems.com/875
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A=\{a_1<a_2<\cdots\}\subset \mathbb{N}$ be an infinite set such that the sets\[S_r = \{ a_1+\cdots +a_r : a_1<\cdots<a_r\in A\}\]are disjoint for distinct $r\geq 1$. How fast can such a sequence grow? How small can $a_{n+1}-a_n$ be? In particular, for which $c$ is it possible that...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 198. Problem 917 - Score 68
- Site: https://www.erdosproblems.com/917
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $k\geq 4$ and $f_k(n)$ be the largest number of edges in a graph on $n$ vertices which has chromatic number $k$ and is critical (i.e. deleting any edge reduces the chromatic number). Is it true that\[f_k(n) \gg_k n^2?\]Is it true that\[f_6(n)\sim n^2/4?\]More generally, is it true that, for...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 199. Problem 130 - Score 68
- Site: https://www.erdosproblems.com/130
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A\subset\mathbb{R}^2$ be an infinite set which contains no three points on a line and no four points on a circle. Consider the graph with vertices the points in $A$, where two vertices are joined by an edge if and only if they are an integer distance apart. How large can the chromatic number...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 200. Problem 1156 - Score 68
- Site: https://www.erdosproblems.com/1156
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a random graph on $n$ vertices, in which every edge is included independently with probability $1/2$. Is there some constant $C$ such that that chromatic number $\chi(G)$ is, almost surely, concentrated on at most $C$ values? Is it true that, if $\omega(n)\to \infty$ sufficiently slowly,...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 201. Problem 837 - Score 68
- Site: https://www.erdosproblems.com/837
- Tags: graph theory, hypergraphs
- Prize: no; formalized: no; OEIS: none
- Statement: Let $k\geq 2$ and $A_k\subseteq [0,1]$ be the set of $\alpha$ such that there exists some $\beta(\alpha)>\alpha$ with the property that, if $G_1,G_2,\ldots$ is a sequence of $k$-uniform hypergraphs with\[\liminf \frac{e(G_n)}{\binom{\lvert G_n\rvert}{k}} >\alpha\]then there exist subgraphs...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 202. Problem 712 - Score 68
- Site: https://www.erdosproblems.com/712
- Tags: graph theory, turan number, hypergraphs
- Prize: $500; formalized: no; OEIS: possible
- Statement: Determine, for any $k>r>2$, the value of\[\frac{\mathrm{ex}_r(n,K_k^r)}{\binom{n}{r}},\]where $\mathrm{ex}_r(n,K_k^r)$ is the largest number of $r$-edges which can placed on $n$ vertices so that there exists no set of $k$ vertices which is covered by all $\binom{k}{r}$ possible $r$-edges.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory, turan number, and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 203. Problem 1142 - Score 67
- Site: https://www.erdosproblems.com/1142
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A039669
- Statement: Are there infinitely many $n$ (or any $n>105$) such that $n-2^k$ is prime for all $1<2^k<n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 204. Problem 213 - Score 67
- Site: https://www.erdosproblems.com/213
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $n\geq 4$. Are there $n$ points in $\mathbb{R}^2$, no three on a line and no four on a circle, such that all pairwise distances are integers?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 205. Problem 971 - Score 67
- Site: https://www.erdosproblems.com/971
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A226521
- Statement: Let $p(a,d)$ be the least prime congruent to $a\pmod{d}$. Does there exist a constant $c>0$ such that, for all large $d$,\[p(a,d) > (1+c)\phi(d)\log d\]for $\gg \phi(d)$ many values of $a$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 206. Problem 243 - Score 67
- Site: https://www.erdosproblems.com/243
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A000058
- Statement: Let $1\leq a_1<a_2<\cdots$ be a sequence of integers such that\[\lim_{n\to \infty}\frac{a_n}{a_{n-1}^2}=1\]and $\sum\frac{1}{a_n}\in \mathbb{Q}$. Then, for all sufficiently large $n\geq 1$,\[ a_n = a_{n-1}^2-a_{n-1}+1.\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 207. Problem 951 - Score 67
- Site: https://www.erdosproblems.com/951
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $1<a_1<\cdots$ be a sequence of real numbers such that\[\left\lvert \prod_i a_i^{k_i}-\prod_j a_j^{\ell_j}\right\rvert \geq 1\]for every distinct pair of non-negative finitely supported integer tuples $k_i,\ell_j\geq 0$. Is it true that\[\#\{ a_i \leq x\} \leq \pi(x)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 208. Problem 1032 - Score 67
- Site: https://www.erdosproblems.com/1032
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: possible
- Statement: We say that a graph is $4$-chromatic critical if it has chromatic number $4$, and removing any edge decreases the chromatic number to $3$. Is there, for arbitrarily large $n$, a $4$-chromatic critical graph on $n$ vertices with minimum degree $\gg n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 209. Problem 336 - Score 67
- Site: https://www.erdosproblems.com/336
- Tags: number theory, additive basis
- Prize: no; formalized: no; OEIS: possible
- Statement: For $r\geq 2$ let $h(r)$ be the maximal finite $k$ such that there exists a basis $A\subseteq \mathbb{N}$ of order $r$ (so every large integer is the sum of at most $r$ integers from $A$) and exact order $k$ (so every large integer is the sum of exactly $k$ integers from $A$). Find the value...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 210. Problem 180 - Score 66
- Site: https://www.erdosproblems.com/180
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: none
- Statement: If $\mathcal{F}$ is a finite set of finite graphs then $\mathrm{ex}(n;\mathcal{F})$ is the maximum number of edges a graph on $n$ vertices can have without containing any subgraphs from $\mathcal{F}$. Note that it is trivial that $\mathrm{ex}(n;\mathcal{F})\leq \mathrm{ex}(n;G)$ for every...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 211. Problem 575 - Score 66
- Site: https://www.erdosproblems.com/575
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: none
- Statement: If $\mathcal{F}$ is a finite set of finite graphs then $\mathrm{ex}(n;\mathcal{F})$ is the maximum number of edges a graph on $n$ vertices can have without containing any subgraphs from $\mathcal{F}$. Note that it is trivial that $\mathrm{ex}(n;\mathcal{F})\leq \mathrm{ex}(n;G)$ for every...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 212. Problem 329 - Score 66
- Site: https://www.erdosproblems.com/329
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Suppose $A\subseteq \mathbb{N}$ is a Sidon set. How large can\[\limsup_{N\to \infty}\frac{\lvert A\cap \{1,\ldots,N\}\rvert}{N^{1/2}}\]be?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 213. Problem 677 - Score 66
- Site: https://www.erdosproblems.com/677
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $M(n,k)=[n+1,\ldots,n+k]$ be the least common multiple of $\{n+1,\ldots,n+k\}$. Is it true that for all $m\geq n+k$\[M(n,k) \neq M(m,k)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 214. Problem 383 - Score 66
- Site: https://www.erdosproblems.com/383
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that for every $k$ there are infinitely many primes $p$ such that the largest prime divisor of\[\prod_{0\leq i\leq k}(p^2+i)\]is $p$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 215. Problem 137 - Score 66
- Site: https://www.erdosproblems.com/137
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: We say that $N$ is powerful if whenever $p\mid N$ we also have $p^2\mid N$. Let $k\geq 3$. Can the product of any $k$ consecutive positive integers ever be powerful?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 216. Problem 51 - Score 65
- Site: https://www.erdosproblems.com/51
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A002202, A014197
- Statement: Is there an infinite set $A\subset \mathbb{N}$ such that for every $a\in A$ there is an integer $n$ such that $\phi(n)=a$, and yet if $n_a$ is the smallest such integer then $n_a/a\to \infty$ as $a\to\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 217. Problem 655 - Score 65
- Site: https://www.erdosproblems.com/655
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $x_1,\ldots,x_n\in \mathbb{R}^2$ be such that no circle whose centre is one of the $x_i$ contains three other points. Are there at least\[(1+c)\frac{n}{2}\]distinct distances determined between the $x_i$, for some constant $c>0$ and all $n$ sufficiently large?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 218. Problem 1074 - Score 65
- Site: https://www.erdosproblems.com/1074
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A063980, A064164
- Statement: Let $S$ be the set of all $m\geq 1$ such that there exists a prime $p\not\equiv 1\pmod{m}$ such that $m!+1\equiv 0\pmod{p}$. Does\[\lim \frac{\lvert S\cap [1,x]\rvert}{x}\]exist? What is it? Similarly, if $P$ is the set of all primes $p$ such that there exists an $m$ with $p\not\equiv 1\pmod{m}$...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 219. Problem 1189 - Score 65
- Site: https://www.erdosproblems.com/1189
- Tags: number theory, covering systems
- Prize: no; formalized: no; OEIS: possible
- Statement: Call a set of distinct integers $1 1$) form an irreducible covering set?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 220. Problem 585 - Score 65
- Site: https://www.erdosproblems.com/585
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: possible
- Statement: What is the maximum number of edges that a graph on $n$ vertices can have if it does not contain two edge-disjoint cycles with the same vertex set?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 221. Problem 579 - Score 65
- Site: https://www.erdosproblems.com/579
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\delta>0$. If $n$ is sufficiently large and $G$ is a graph on $n$ vertices with no $K_{2,2,2}$ and at least $\delta n^2$ edges then $G$ contains an independent set of size $\gg_\delta n$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 222. Problem 766 - Score 64
- Site: https://www.erdosproblems.com/766
- Tags: graph theory, turan number
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n;k,l)=\min \mathrm{ex}(n;G)$, where $G$ ranges over all graphs with $k$ vertices and $l$ edges. Give good estimates for $f(n;k,l)$ in the range $k<l\leq k^2/4$. For fixed $k$ and large $n$ is $f(n;k,l)$ a strictly monotone function of $l$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 223. Problem 706 - Score 64
- Site: https://www.erdosproblems.com/706
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $L(r)$ be such that if $G$ is a graph formed by taking a finite set of points $P$ in $\mathbb{R}^2$ and some set $A\subset (0,\infty)$ of size $r$, where the vertex set is $P$ and there is an edge between two points if and only if their distance is a member of $A$, then $\chi(G)\leq L(r)$....
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 224. Problem 338 - Score 64
- Site: https://www.erdosproblems.com/338
- Tags: number theory, additive basis
- Prize: no; formalized: no; OEIS: none
- Statement: The restricted order of a basis is the least integer $t$ (if it exists) such that every large integer is the sum of at most $t$ distinct summands from $A$. What are necessary and sufficient conditions that this exists? Can it be bounded (when it exists) in terms of the order of the basis? What are...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 225. Problem 761 - Score 64
- Site: https://www.erdosproblems.com/761
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: The cochromatic number of $G$, denoted by $\zeta(G)$, is the minimum number of colours needed to colour the vertices of $G$ such that each colour class induces either a complete graph or empty graph. The dichromatic number of $G$, denoted by $\delta(G)$, is the minimum number $k$ of colours...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 226. Problem 1059 - Score 64
- Site: https://www.erdosproblems.com/1059
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A064152
- Statement: Are there infinitely many primes $p$ such that $p-k!$ is composite for each $k$ such that $1\leq k!<p$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 227. Problem 236 - Score 64
- Site: https://www.erdosproblems.com/236
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A039669, A109925
- Statement: Let $f(n)$ count the number of solutions to $n=p+2^k$ for prime $p$ and $k\geq 0$. Is it true that $f(n)=o(\log n)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 228. Problem 325 - Score 63
- Site: https://www.erdosproblems.com/325
- Tags: number theory, powers
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $k\geq 3$ and $f_{k,3}(x)$ denote the number of integers $\leq x$ which are the sum of three nonnegative $k$th powers. Is it true that\[f_{k,3}(x) \gg x^{3/k}\]or even $\gg_\epsilon x^{3/k-\epsilon}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and powers) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 229. Problem 830 - Score 63
- Site: https://www.erdosproblems.com/830
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A259180
- Statement: We say that $a,b\in \mathbb{N}$ are an amicable pair if $\sigma(a)=\sigma(b)=a+b$. Are there infinitely many amicable pairs? If $A(x)$ counts the number of amicable $1\leq a\leq b\leq x$ then is it true that\[A(x)>x^{1-o(1)}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 230. Problem 394 - Score 63
- Site: https://www.erdosproblems.com/394
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A344005
- Statement: Let $t_k(n)$ denote the least $m$ such that\[n\mid m(m+1)(m+2)\cdots (m+k-1).\]Is it true that\[\sum_{n\leq x}t_2(n)\ll \frac{x^2}{(\log x)^c}\]for some $c>0$? Is it true that, for $k\geq 2$,\[\sum_{n\leq x}t_{k+1}(n) =o\left(\sum_{n\leq x}t_k(n)\right)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 231. Problem 939 - Score 63
- Site: https://www.erdosproblems.com/939
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $r\geq 2$. An $r$-powerful number $n$ is one such that if $p\mid n$ then $p^r\mid n$. If $r\geq 4$ then can the sum of $r-2$ coprime $r$-powerful numbers ever be itself $r$-powerful? Are there at most finitely many such solutions? Are there infinitely many triples of coprime $3$-powerful...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 232. Problem 341 - Score 63
- Site: https://www.erdosproblems.com/341
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A=\{a_1<\cdots<a_k\}$ be a finite set of positive integers and extend it to an infinite sequence $\overline{A}=\{a_1<a_2<\cdots \}$ by defining $a_{n+1}$ for $n\geq k$ to be the least integer exceeding $a_n$ which is not of the form $a_i+a_j$ with $i,j\leq n$. Is it true that the sequence of...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 233. Problem 1206 - Score 63
- Site: https://www.erdosproblems.com/1206
- Tags: number theory, sidon sets
- Prize: no; formalized: no; OEIS: possible
- Statement: Does $\{1,2^3,\ldots,N^3\}$ contain a Sidon set of size $\gg N$? Is there an infinite set $A\subset \mathbb{N}$ of positive density such that $\{a^3 : a\in A\}$ is a Sidon set?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 234. Problem 684 - Score 62
- Site: https://www.erdosproblems.com/684
- Tags: number theory, primes, binomial coefficients
- Prize: no; formalized: no; OEIS: A392019
- Statement: For $0\leq k\leq n$ write\[\binom{n}{k} = uv\]where the only primes dividing $u$ are in $[2,k]$ and the only primes dividing $v$ are in $(k,n]$. Let $f(n)$ be the smallest $k$ such that $u>n^2$. Give bounds for $f(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, primes, and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 235. Problem 627 - Score 62
- Site: https://www.erdosproblems.com/627
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $\omega(G)$ denote the clique number of $G$ and $\chi(G)$ the chromatic number. If $f(n)$ is the maximum value of $\chi(G)/\omega(G)$, as $G$ ranges over all graphs on $n$ vertices, then does\[\lim_{n\to\infty}\frac{f(n)}{n/(\log_2n)^2}\]exist?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 236. Problem 685 - Score 62
- Site: https://www.erdosproblems.com/685
- Tags: number theory, primes, binomial coefficients
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\epsilon>0$ and $n$ be large depending on $\epsilon$. Is it true that for all $n^\epsilon<k\leq n^{1-\epsilon}$ the number of distinct prime divisors of $\binom{n}{k}$ is\[(1+o(1))k\sum_{k<p<n}\frac{1}{p}?\]Or perhaps even when $k \geq (\log n)^c$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, primes, and binomial coefficients) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This is especially attractive for the Acorn plan because binomial identities, modular arithmetic, divisibility, and finite base-expansion lemmas are already close to existing library strengths. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 237. Problem 704 - Score 62
- Site: https://www.erdosproblems.com/704
- Tags: graph theory, geometry, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G_n$ be the unit distance graph in $\mathbb{R}^n$, with two vertices joined by an edge if and only if the distance between them is $1$. Estimate the chromatic number $\chi(G_n)$. Does it grow exponentially in $n$? Does\[\lim_{n\to \infty}\chi(G_n)^{1/n}\]exist?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory, geometry, and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 238. Problem 84 - Score 62
- Site: https://www.erdosproblems.com/84
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: possible
- Statement: The cycle set of a graph $G$ on $n$ vertices is a set $A\subseteq \{3,\ldots,n\}$ such that there is a cycle in $G$ of length $\ell$ if and only if $\ell \in A$. Let $f(n)$ count the number of possible such $A$. Prove that $f(n)=o(2^n)$. Prove that $f(n)/2^{n/2}\to \infty$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 239. Problem 169 - Score 62
- Site: https://www.erdosproblems.com/169
- Tags: additive combinatorics, arithmetic progressions
- Prize: no; formalized: no; OEIS: A005346
- Statement: Let $k\geq 3$ and $f(k)$ be the supremum of $\sum_{n\in A}\frac{1}{n}$ as $A$ ranges over all sets of positive integers which do not contain a $k$-term arithmetic progression. Estimate $f(k)$. Is\[\lim_{k\to \infty}\frac{f(k)}{\log W(k)}=\infty\]where $W(k)$ is the van der Waerden number?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 240. Problem 870 - Score 62
- Site: https://www.erdosproblems.com/870
- Tags: number theory, additive basis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $k\geq 3$ and $A$ be an additive basis of order $k$. Does there exist a constant $c=c(k)>0$ such that if $r(n)\geq c\log n$ for all large $n$ then $A$ must contain a minimal basis of order $k$? (Here $r(n)$ counts the number of representations of $n$ as the sum of at most $k$ elements from $A$.)
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive basis) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 241. Problem 972 - Score 61
- Site: https://www.erdosproblems.com/972
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\alpha>1$ be irrational. Are there infinitely many primes $p$ such that $\lfloor p\alpha\rfloor$ is also prime?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 242. Problem 455 - Score 61
- Site: https://www.erdosproblems.com/455
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $q_1<q_2<\cdots$ be a sequence of primes such that\[q_{n+1}-q_n\geq q_n-q_{n-1}.\]Must\[\lim_n \frac{q_n}{n^2}=\infty?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 243. Problem 352 - Score 61
- Site: https://www.erdosproblems.com/352
- Tags: geometry
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there some $c>0$ such that every measurable $A\subseteq \mathbb{R}^2$ of measure $\geq c$ contains the vertices of a triangle of area 1?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 244. Problem 416 - Score 61
- Site: https://www.erdosproblems.com/416
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A264810
- Statement: Let $V(x)$ count the number of $n\leq x$ such that $\phi(m)=n$ is solvable. Does $V(2x)/V(x)\to 2$? Is there an asymptotic formula for $V(x)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 245. Problem 961 - Score 61
- Site: https://www.erdosproblems.com/961
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A213253
- Statement: Let $f(k)$ be the minimal $n$ such that every set of $n$ consecutive integers $>k$ contains an integer divisible by a prime $>k$. Estimate $f(k)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 246. Problem 1063 - Score 61
- Site: https://www.erdosproblems.com/1063
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A389360
- Statement: Let $k\geq 2$ and define $n_k\geq 2k$ to be the least value of $n$ such that $n-i$ divides $\binom{n}{k}$ for all but one $0\leq i<k$. Estimate $n_k$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 247. Problem 445 - Score 60
- Site: https://www.erdosproblems.com/445
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that, for any $c>1/2$, if $p$ is a sufficiently large prime then, for any $n\geq 0$, there exist $a,b\in(n,n+p^c)$ such that $ab\equiv 1\pmod{p}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 248. Problem 653 - Score 60
- Site: https://www.erdosproblems.com/653
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $x_1,\ldots,x_n\in \mathbb{R}^2$ and let $R(x_i)=\#\{ \lvert x_j-x_i\rvert : j\neq i\}$, where the points are ordered such that\[R(x_1)\leq \cdots \leq R(x_n).\]Let $g(n)$ be the maximum number of distinct values the $R(x_i)$ can take. Is it true that $g(n) \geq (1-o(1))n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 249. Problem 724 - Score 60
- Site: https://www.erdosproblems.com/724
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: A001438
- Statement: Let $f(n)$ be the maximum number of mutually orthogonal Latin squares of order $n$. Is it true that\[f(n) \gg n^{1/2}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 250. Problem 293 - Score 60
- Site: https://www.erdosproblems.com/293
- Tags: number theory, unit fractions
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k\geq 1$ and let $v(k)$ be the minimal integer which does not appear as some $n_i$ in a solution to\[1=\frac{1}{n_1}+\cdots+\frac{1}{n_k}\]with $1\leq n_1<\cdots <n_k$. Estimate the growth of $v(k)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and unit fractions) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 251. Problem 788 - Score 60
- Site: https://www.erdosproblems.com/788
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be maximal such that if $B\subset (2n,4n)\cap \mathbb{N}$ there exists some $C\subset (n,2n)\cap \mathbb{N}$ such that $c_1+c_2\not\in B$ for all $c_1\neq c_2\in C$ and $\lvert C\rvert+\lvert B\rvert \geq f(n)$. Estimate $f(n)$. In particular is it true that $f(n)\leq n^{1/2+o(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 252. Problem 1112 - Score 60
- Site: https://www.erdosproblems.com/1112
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: Let $1\leq d_1<d_2$ and $k\geq 3$. Does there exist an integer $r$ such that if $B=\{b_1<\cdots\}$ is a lacunary sequence of positive integers with $b_{i+1}\geq rb_i$ then there exists a sequence of positive integers $A=\{a_1<\cdots\}$ such that\[d_1\leq a_{i+1}-a_i\leq d_2\]for all $i\geq 1$ and...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 253. Problem 454 - Score 59
- Site: https://www.erdosproblems.com/454
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A389676, A389677
- Statement: Let\[f(n) = \min_{i<n} (p_{n+i}+p_{n-i}),\]where $p_k$ is the $k$th prime. Is it true that\[\limsup_n (f(n)-2p_n)=\infty?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 254. Problem 855 - Score 59
- Site: https://www.erdosproblems.com/855
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A023193
- Statement: If $\pi(x)$ counts the number of primes in $[1,x]$ then is it true that (for large $x$ and $y$)\[\pi(x+y) \leq \pi(x)+\pi(y)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 255. Problem 681 - Score 59
- Site: https://www.erdosproblems.com/681
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A389680
- Statement: Is it true that for all large $n$ there exists $k$ such that $n+k$ is composite and\[p(n+k)>k^2,\]where $p(m)$ is the least prime factor of $m$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 256. Problem 1137 - Score 59
- Site: https://www.erdosproblems.com/1137
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A083550, A005250
- Statement: Let $d_n=p_{n+1}-p_n$, where $p_n$ denotes the $n$th prime. Is it true that\[\frac{\max_{n<x}d_{n}d_{n-1}}{(\max_{n<x}d_n)^2}\to 0\]as $x\to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 257. Problem 1107 - Score 59
- Site: https://www.erdosproblems.com/1107
- Tags: number theory, powerful
- Prize: no; formalized: yes; OEIS: A056828, A392342, A392343
- Statement: Let $r\geq 2$. A number $n$ is $r$-powerful if for every prime $p$ which divides $n$ we have $p^r\mid n$. Is every large integer the sum of at most $r+1$ many $r$-powerful numbers?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and powerful) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 258. Problem 357 - Score 59
- Site: https://www.erdosproblems.com/357
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A364132, A364153
- Statement: Let $1\leq a_1<\cdots <a_k\leq n$ be integers such that all sums of the shape $\sum_{u\leq i\leq v}a_i$ are distinct. Let $f(n)$ be the maximal such $k$. How does $f(n)$ grow? Is $f(n)=o(n)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 259. Problem 1060 - Score 58
- Site: https://www.erdosproblems.com/1060
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A327153
- Statement: Let $f(n)$ count the number of solutions to $k\sigma(k)=n$, where $\sigma(k)$ is the sum of divisors of $k$. Is it true that $f(n)\leq n^{o(\frac{1}{\log\log n})}$? Perhaps even $\leq (\log n)^{O(1)}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 260. Problem 477 - Score 58
- Site: https://www.erdosproblems.com/477
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a polynomial $f:\mathbb{Z}\to \mathbb{Z}$ of degree at least $2$ and a set $A\subset \mathbb{Z}$ such that for any $n\in \mathbb{Z}$ there is exactly one $a\in A$ and $b\in \{ f(k) : k\in\mathbb{Z}\}$ such that $n=a+b$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 261. Problem 962 - Score 58
- Site: https://www.erdosproblems.com/962
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A327909
- Statement: Let $k(n)$ be the maximal $k$ such that there exists $m\leq n$ such that each of the integers\[m+1,\ldots,m+k\]are divisible by at least one prime $>k$. Estimate $k(n)$ - in particular, is it true that\[\log k(n) \leq (\log n)^{1/2+o(1)}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 262. Problem 489 - Score 58
- Site: https://www.erdosproblems.com/489
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subseteq \mathbb{N}$ be a set such that $\lvert A\cap [1,x]\rvert=o(x^{1/2})$. Let\[B=\{ n\geq 1 : a\nmid n\textrm{ for all }a\in A\}.\]If $B=\{b_1<b_2<\cdots\}$ then is it true that\[\lim \frac{1}{x}\sum_{b_i<x}(b_{i+1}-b_i)^2\]exists (and is finite)?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 263. Problem 786 - Score 58
- Site: https://www.erdosproblems.com/786
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A143301
- Statement: Let $\epsilon>0$. Is there some set $A\subset \mathbb{N}$ of density $>1-\epsilon$ such that $a_1\cdots a_r=b_1\cdots b_s$ with $a_i,b_j\in A$ can only hold when $r=s$? Similarly, can one always find a set $A\subset\{1,\ldots,N\}$ with this property of size $\geq (1-o(1))N$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 264. Problem 323 - Score 58
- Site: https://www.erdosproblems.com/323
- Tags: number theory, powers
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $1\leq m\leq k$ and $f_{k,m}(x)$ denote the number of integers $\leq x$ which are the sum of $m$ many nonnegative $k$th powers. Is it true that\[f_{k,k}(x) \gg_\epsilon x^{1-\epsilon}\]for all $\epsilon>0$? Is it true that if $m<k$ then\[f_{k,m}(x) \gg x^{m/k}\]for sufficiently large $x$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and powers) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 265. Problem 940 - Score 57
- Site: https://www.erdosproblems.com/940
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $r\geq 3$. A number $n$ is $r$-powerful if for every prime $p$ which divides $n$ we have $p^r\mid n$. Are there infinitely many integers which are not the sum of at most $r$ many $r$-powerful numbers? Does the set of integers which are the sum of at most $r$ $r$-powerful numbers have density...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 266. Problem 483 - Score 57
- Site: https://www.erdosproblems.com/483
- Tags: number theory, additive combinatorics, ramsey theory
- Prize: no; formalized: no; OEIS: A030126
- Statement: Let $f(k)$ be the minimal $N$ such that if $\{1,\ldots,N\}$ is $k$-coloured then there is a monochromatic solution to $a+b=c$. Estimate $f(k)$. In particular, is it true that $f(k) 0$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory, additive combinatorics, and ramsey theory) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 267. Problem 873 - Score 57
- Site: https://www.erdosproblems.com/873
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A=\{a_1 0$, there exists some $k$ such that\[F(A,X,k)<X^\epsilon?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 268. Problem 826 - Score 57
- Site: https://www.erdosproblems.com/826
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Are there infinitely many $n$ such that, for all $k\geq 1$,\[\tau(n+k)\ll k?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 269. Problem 15 - Score 57
- Site: https://www.erdosproblems.com/15
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that\[\sum_{n=1}^\infty(-1)^n\frac{n}{p_n}\]converges, where $p_n$ is the sequence of primes?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has computational evidence, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 270. Problem 952 - Score 57
- Site: https://www.erdosproblems.com/952
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there an infinite sequence of distinct Gaussian primes $x_1,x_2,\ldots$ such that\[\lvert x_{n+1}-x_n\rvert \ll 1?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 271. Problem 686 - Score 57
- Site: https://www.erdosproblems.com/686
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Can every integer $N\geq 2$ be written as\[N=\frac{\prod_{1\leq i\leq k}(m+i)}{\prod_{1\leq i\leq k}(n+i)}\]for some $k\geq 2$ and $m\geq n+k$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 272. Problem 17 - Score 56
- Site: https://www.erdosproblems.com/17
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A038133
- Statement: Are there infinitely many primes $p$ such that every even number $n\leq p-3$ can be written as a difference of primes $n=q_1-q_2$ where $q_1,q_2\leq p$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 273. Problem 850 - Score 56
- Site: https://www.erdosproblems.com/850
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A343101
- Statement: Can there exist two distinct integers $x$ and $y$ such that $x,y$ have the same prime factors, $x+1,y+1$ have the same prime factors, and $x+2,y+2$ also have the same prime factors?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 274. Problem 218 - Score 56
- Site: https://www.erdosproblems.com/218
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A333230, A333231, A064113
- Statement: Let $d_n=p_{n+1}-p_n$. The set of $n$ such that $d_{n+1}\geq d_n$ has density $1/2$, and similarly for $d_{n+1}\leq d_n$. Furthermore, there are infinitely many $n$ such that $d_{n+1}=d_n$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 275. Problem 100 - Score 56
- Site: https://www.erdosproblems.com/100
- Tags: geometry, distances
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A$ be a set of $n$ points in $\mathbb{R}^2$ such that all pairwise distances are at least $1$ and if two distinct distances differ then they differ by at least $1$. Is the diameter of $A$ $\gg n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 276. Problem 1055 - Score 56
- Site: https://www.erdosproblems.com/1055
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A005113
- Statement: A prime $p$ is in class $1$ if the only prime divisors of $p+1$ are $2$ or $3$. In general, a prime $p$ is in class $r$ if every prime factor of $p+1$ is in some class $\leq r-1$, with equality for at least one prime factor. Are there infinitely many primes in each class? If $p_r$ is the least...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 277. Problem 1052 - Score 56
- Site: https://www.erdosproblems.com/1052
- Tags: number theory
- Prize: $10; formalized: yes; OEIS: A002827
- Statement: A unitary divisor of $n$ is $d\mid n$ such that $(d,n/d)=1$. A number $n\geq 1$ is a unitary perfect number if it is the sum of its unitary divisors (aside from $n$ itself). Are there only finite many unitary perfect numbers?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($10) is small, so it is only a mild difficulty signal. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 278. Problem 65 - Score 55
- Site: https://www.erdosproblems.com/65
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a graph with $n$ vertices and $kn$ edges, and $a_1<a_2<\cdots $ be the lengths of cycles in $G$. Is it true that\[\sum\frac{1}{a_i}\gg \log k?\]Is the sum $\sum\frac{1}{a_i}$ minimised when $G$ is a complete bipartite graph?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 279. Problem 629 - Score 55
- Site: https://www.erdosproblems.com/629
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: possible
- Statement: The list chromatic number $\chi_L(G)$ is defined to be the minimal $k$ such that for any assignment of a list of $k$ colours to each vertex of $G$ (perhaps different lists for different vertices) a colouring of each vertex by a colour on its list can be chosen such that adjacent vertices receive...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 280. Problem 931 - Score 55
- Site: https://www.erdosproblems.com/931
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $k_1\geq k_2\geq 3$. Are there only finitely many $n_2\geq n_1+k_1$ such that\[\prod_{1\leq i\leq k_1}(n_1+i)\textrm{ and }\prod_{1\leq j\leq k_2}(n_2+j)\]have the same prime factors?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 281. Problem 889 - Score 55
- Site: https://www.erdosproblems.com/889
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: For $k\geq 0$ and $n\geq 1$ let $v(n,k)$ count the prime factors of $n+k$ which do not divide $n+i$ for $0\leq i k$. Is it true that\[v_0(n)=\max_{k\geq 0}v(n,k)\to \infty\]as $n\to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 282. Problem 1004 - Score 55
- Site: https://www.erdosproblems.com/1004
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $c>0$. If $x$ is sufficiently large then does there exist $n\leq x$ such that the values of $\phi(n+k)$ are all distinct for $1\leq k\leq (\log x)^c$, where $\phi$ is the Euler totient function?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 283. Problem 332 - Score 55
- Site: https://www.erdosproblems.com/332
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subseteq \mathbb{N}$ and $D(A)$ be the set of those numbers which occur infinitely often as $a_1-a_2$ with $a_1,a_2\in A$. What conditions on $A$ are sufficient to ensure $D(A)$ has bounded gaps?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 284. Problem 1106 - Score 54
- Site: https://www.erdosproblems.com/1106
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A194259, A194260
- Statement: Let $p(n)$ denote the partition function of $n$ and let $F(n)$ count the number of distinct prime factors of\[\prod_{1\leq k\leq n}p(k).\]Does $F(n)\to \infty$ with $n$? Is $F(n)>n$ for all sufficiently large $n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 285. Problem 1062 - Score 54
- Site: https://www.erdosproblems.com/1062
- Tags: number theory
- Prize: no; formalized: yes; OEIS: A038372
- Statement: Let $f(n)$ be the size of the largest subset $A\subseteq \{1,\ldots,n\}$ such that there are no three distinct elements $a,b,c\in A$ such that $a\mid b$ and $a\mid c$. How large can $f(n)$ be? Is $\lim f(n)/n$ irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 286. Problem 930 - Score 54
- Site: https://www.erdosproblems.com/930
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that, for every $r$, there is a $k$ such that if $I_1,\ldots,I_r$ are disjoint intervals of consecutive integers, all of length at least $k$, then\[\prod_{1\leq i\leq r}\prod_{m\in I_i}m\]is not a perfect power?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 287. Problem 520 - Score 54
- Site: https://www.erdosproblems.com/520
- Tags: number theory, probability
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $f$ be a Rademacher multiplicative function: a random $\{-1,0,1\}$-valued multiplicative function, where for each prime $p$ we independently choose $f(p)\in \{-1,1\}$ uniformly at random, and for square-free integers $n$ we extend $f(p_1\cdots p_r)=f(p_1)\cdots f(p_r)$ (and $f(n)=0$ if $n$ is...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and probability) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 288. Problem 802 - Score 54
- Site: https://www.erdosproblems.com/802
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: Is it true that any $K_r$-free graph on $n$ vertices with average degree $t$ contains an independent set on\[\gg_r \frac{\log t}{t}n\]many vertices?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 289. Problem 81 - Score 54
- Site: https://www.erdosproblems.com/81
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $G$ be a chordal graph on $n$ vertices - that is, $G$ has no induced cycles of length greater than $3$. Can the edges of $G$ be partitioned into $n^2/6+O(n)$ many cliques?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 290. Problem 552 - Score 53
- Site: https://www.erdosproblems.com/552
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A006672
- Statement: Determine the Ramsey number\[R(C_4,S_n),\]where $S_n=K_{1,n}$ is the star on $n+1$ vertices. In particular, is it true that, for any $c>0$, there are infinitely many $n$ such that\[R(C_4,S_n)\leq n+\sqrt{n}-c?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 291. Problem 87 - Score 53
- Site: https://www.erdosproblems.com/87
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A059442
- Statement: Let $\epsilon >0$. Is it true that, if $k$ is sufficiently large, then\[R(G)>(1-\epsilon)^kR(k)\]for every graph $G$ with chromatic number $\chi(G)=k$? Even stronger, is there some $c>0$ such that, for all large $k$, $R(G)>cR(k)$ for every graph $G$ with chromatic number $\chi(G)=k$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 292. Problem 563 - Score 53
- Site: https://www.erdosproblems.com/563
- Tags: graph theory, ramsey theory, hypergraphs
- Prize: no; formalized: no; OEIS: none
- Statement: Let $F(n,\alpha)$ denote the smallest $m$ such that there exists a $2$-colouring of the edges of $K_n$ so that every $X\subseteq [n]$ with $\lvert X\rvert\geq m$ contains more than $\alpha \binom{\lvert X\rvert}{2}$ many edges of each colour. Prove that, for every $0\leq \alpha<...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory, ramsey theory, and hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 293. Problem 176 - Score 53
- Site: https://www.erdosproblems.com/176
- Tags: additive combinatorics, arithmetic progressions, discrepancy
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $N(k,\ell)$ be the minimal $N$ such that for any $f:\{1,\ldots,N\}\to\{-1,1\}$ there must exist a $k$-term arithmetic progression $P$ such that\[ \left\lvert \sum_{n\in P}f(n)\right\rvert\geq \ell.\]Find good upper bounds for $N(k,\ell)$. Is it true that for any $c>0$ there exists some $C>1$...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics, arithmetic progressions, and discrepancy) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 294. Problem 943 - Score 53
- Site: https://www.erdosproblems.com/943
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $A$ be the set of powerful numbers (if $p\mid n$ then $p^2\mid n$). Is it true that\[1_A\ast 1_A(n)=n^{o(1)}\]for every $n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 295. Problem 1210 - Score 53
- Site: https://www.erdosproblems.com/1210
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $A\subseteq [1,n)$ be a set of integers such that $(a,b)=1$ for all distinct $a,b\in A$. Is it true that\[\sum_{a\in A}\frac{1}{n-a}\leq \sum_{p<n}\frac{1}{p}+O(1)?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 296. Problem 853 - Score 52
- Site: https://www.erdosproblems.com/853
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A001223, A390769
- Statement: Let $d_n=p_{n+1}-p_n$, where $p_n$ is the $n$th prime. Let $r(x)$ be the smallest even integer $t$ such that $d_n=t$ has no solutions for $n\leq x$. Is it true that $r(x)\to \infty$? Or even $r(x)/\log x \to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 297. Problem 89 - Score 52
- Site: https://www.erdosproblems.com/89
- Tags: geometry, distances
- Prize: $500; formalized: yes; OEIS: A186704, A131628
- Statement: Does every set of $n$ distinct points in $\mathbb{R}^2$ determine $\gg n/\sqrt{\log n}$ many distinct distances?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 298. Problem 986 - Score 52
- Site: https://www.erdosproblems.com/986
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A000791, A059442
- Statement: For any fixed $s\geq 3$,\[R(s,k) \gg \frac{k^{s-1}}{(\log k)^c}\]for some constant $c=c(s)>0$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 299. Problem 819 - Score 52
- Site: https://www.erdosproblems.com/819
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(N)$ be maximal such that there exists $A\subseteq \{1,\ldots,N\}$ with $\lvert A\rvert=\lfloor N^{1/2}\rfloor$ such that $\lvert (A+A)\cap [1,N]\rvert=f(N)$. Estimate $f(N)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 300. Problem 902 - Score 52
- Site: https://www.erdosproblems.com/902
- Tags: graph theory
- Prize: no; formalized: no; OEIS: A362137
- Statement: Let $f(n)$ be minimal such that there is a tournament (a complete directed graph) on $f(n)$ vertices such that every set of $n$ vertices is dominated by at least one other vertex. Estimate $f(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 301. Problem 1013 - Score 52
- Site: https://www.erdosproblems.com/1013
- Tags: graph theory
- Prize: no; formalized: no; OEIS: A292528
- Statement: Let $h_3(k)$ be the minimal $n$ such that there exists a triangle-free graph on $n$ vertices with chromatic number $k$. Find an asymptotic for $h_3(k)$, and also prove\[\lim_{k\to \infty}\frac{h_3(k+1)}{h_3(k)}=1.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 302. Problem 787 - Score 52
- Site: https://www.erdosproblems.com/787
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $g(n)$ be maximal such that given any set $A\subset \mathbb{R}$ with $\lvert A\rvert=n$ there exists some $B\subseteq A$ of size $\lvert B\rvert\geq g(n)$ such that $b_1+b_2\not\in A$ for all $b_1\neq b_2\in B$. Estimate $g(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 303. Problem 792 - Score 51
- Site: https://www.erdosproblems.com/792
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be maximal such that in any $A\subset \mathbb{Z}$ with $\lvert A\rvert=n$ there exists some sum-free subset $B\subseteq A$ with $\lvert B\rvert \geq f(n)$, so that there are no solutions to\[a+b=c\]with $a,b,c\in B$. Estimate $f(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 304. Problem 866 - Score 51
- Site: https://www.erdosproblems.com/866
- Tags: number theory, additive combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k\geq 3$ and $g_k(N)$ be minimal such that if $A\subseteq \{1,\ldots,2N\}$ has $\lvert A\rvert \geq N+g_k(N)$ then there exist integers $b_1,\ldots,b_k$ such that all $\binom{k}{2}$ pairwise sums are in $A$ (but the $b_i$ themselves need not be in $A$). Estimate $g_k(N)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 305. Problem 1111 - Score 51
- Site: https://www.erdosproblems.com/1111
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: If $G$ is a finite graph and $A,B$ are disjoint sets of vertices then we call $A,B$ anticomplete if there are no edges between $A$ and $B$. If $t,c\geq 1$ then there exists $d\geq 1$ such that if $\chi(G)\geq d$ and $\omega(G)<t$ then there are anticomplete sets $A,B$ with $\chi(A)\geq \chi(B)\geq...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 306. Problem 619 - Score 51
- Site: https://www.erdosproblems.com/619
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: For a triangle-free graph $G$ let $h_r(G)$ be the smallest number of edges that need to be added to $G$ so that it has diameter $r$ (while preserving the property of being triangle-free). Is it true that there exists a constant $c>0$ such that if $G$ is a connected graph on $n$ vertices then...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 307. Problem 600 - Score 51
- Site: https://www.erdosproblems.com/600
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $e(n,r)$ be minimal such that every graph on $n$ vertices with at least $e(n,r)$ edges, each edge contained in at least one triangle, must have an edge contained in at least $r$ triangles. Let $r\geq 2$. Is it true that\[e(n,r+1)-e(n,r)\to \infty\]as $n\to \infty$? Is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 308. Problem 201 - Score 51
- Site: https://www.erdosproblems.com/201
- Tags: additive combinatorics, arithmetic progressions
- Prize: no; formalized: no; OEIS: A003002, A003003, A003004, A003005
- Statement: Let $G_k(N)$ be such that any set of $N$ integers contains a subset of size at least $G_k(N)$ which does not contain a $k$-term arithmetic progression. Determine the size of $G_k(N)$. How does it relate to $R_k(N)$, the size of the largest subset of $\{1,\ldots,N\}$ without a $k$-term arithmetic...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 309. Problem 1188 - Score 50
- Site: https://www.erdosproblems.com/1188
- Tags: number theory, covering systems
- Prize: no; formalized: no; OEIS: possible
- Statement: Call a set of distinct integers $1<n_1<\cdots<n_k$ with associated congruence classes $a_i\pmod{n_i}$ a distinct covering system if every integer satisfies at least one of these congruences. A minimal distinct covering system is one such that no proper subset forms a covering system. Let $F(x)$...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and covering systems) are close to Acorn strengths: Nat/Int arithmetic, congruences, divisibility, finite lists, and searchable sequences. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 310. Problem 584 - Score 50
- Site: https://www.erdosproblems.com/584
- Tags: graph theory, cycles
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a graph with $n$ vertices and $\delta n^{2}$ edges. Are there subgraphs $H_1,H_2\subseteq G$ such that {UL} {LI}$H_1$ has $\gg \delta^3n^2$ edges and every two edges in $H_1$ are contained in a cycle of length at most $6$, and furthermore if two edges share a vertex they are on a cycle...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and cycles) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 311. Problem 713 - Score 50
- Site: https://www.erdosproblems.com/713
- Tags: graph theory, turan number
- Prize: $500; formalized: no; OEIS: none
- Statement: Is it true that, for every bipartite graph $G$, there exists some $\alpha\in [1,2)$ and $c>0$ such that\[\mathrm{ex}(n;G)\sim cn^\alpha?\]Must $\alpha$ be rational?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 312. Problem 1191 - Score 50
- Site: https://www.erdosproblems.com/1191
- Tags: additive combinatorics, sidon sets
- Prize: $1000; formalized: no; OEIS: possible
- Statement: Let $A\subset\mathbb{N}$ be an infinite Sidon set. Is it true that\[\liminf_{x\to \infty} \frac{\lvert A\cap [1,x]\rvert}{x^{1/2}}(\log x)^{1/2}=0?\]Does there exist an infinite Sidon set $A$ such that\[\liminf_{x\to \infty} \frac{\lvert A\cap [1,x]\rvert}{x^{1/2}}(\log x)^c>0\]for some $c>0$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (additive combinatorics and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 313. Problem 1139 - Score 50
- Site: https://www.erdosproblems.com/1139
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $1\leq u_1<u_2<\cdots$ be the sequence of integers with at most $2$ prime factors. Is it true that\[\limsup \frac{u_{k+1}-u_k}{\log k}=\infty?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 314. Problem 689 - Score 50
- Site: https://www.erdosproblems.com/689
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $n$ be sufficiently large. Is there some choice of congruence class $a_p$ for all primes $2\leq p\leq n$ such that every integer in $[1,n]$ satisfies at least two of the congruences $\equiv a_p\pmod{p}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 315. Problem 361 - Score 49
- Site: https://www.erdosproblems.com/361
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $c>0$ and $n$ be some large integer. What is the size of the largest $A\subseteq \{1,\ldots,\lfloor cn\rfloor\}$ such that $n$ is not a sum of a subset of $A$? Does this depend on $n$ in an irregular way?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 316. Problem 254 - Score 49
- Site: https://www.erdosproblems.com/254
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subseteq \mathbb{N}$ be such that\[\lvert A\cap [1,2x]\rvert -\lvert A\cap [1,x]\rvert \to \infty\textrm{ as }x\to \infty\]and\[\sum_{n\in A} \{ \theta n\}=\infty\]for every $\theta\in (0,1)$, where $\{x\}$ is the distance of $x$ from the nearest integer. Then every sufficiently large...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 317. Problem 486 - Score 49
- Site: https://www.erdosproblems.com/486
- Tags: number theory, primitive sets
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subseteq \mathbb{N}$, and for each $n\in A$ choose some $X_n\subseteq \mathbb{Z}/n\mathbb{Z}$. Let\[B = \{ m\in \mathbb{N} : m\not\in X_n\pmod{n}\textrm{ for all }n\in A\textrm{ with }m>n\}.\]Must $B$ have a logarithmic density, i.e. is it true that\[\lim_{x\to \infty} \frac{1}{\log...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primitive sets) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 318. Problem 101 - Score 49
- Site: https://www.erdosproblems.com/101
- Tags: geometry
- Prize: $100; formalized: yes; OEIS: A006065
- Statement: Given $n$ points in $\mathbb{R}^2$, no five of which are on a line, the number of lines containing four points is $o(n^2)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 319. Problem 1035 - Score 49
- Site: https://www.erdosproblems.com/1035
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Is there a constant $c>0$ such that every graph on $2^n$ vertices with minimum degree $>(1-c)2^n$ contains the $n$-dimensional hypercube $Q_n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 320. Problem 1017 - Score 49
- Site: https://www.erdosproblems.com/1017
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n,k)$ be such that every graph on $n$ vertices and $k$ edges can be partitioned into at most $f(n,k)$ edge-disjoint complete graphs. Estimate $f(n,k)$ for $k>n^2/4$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 321. Problem 1186 - Score 48
- Site: https://www.erdosproblems.com/1186
- Tags: additive combinatorics, arithmetic progressions
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $\delta_k$ be such that in any $2$-colouring of $\{1,\ldots,n\}$ there exist at least $(\delta_k+o(1))n^2$ many monochromatic $k$-term arithmetic progressions. Give reasonable bounds (or even an asymptotic formula) for $\delta_k$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 322. Problem 1030 - Score 48
- Site: https://www.erdosproblems.com/1030
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A000791, A059442
- Statement: Let $R(k,l)$ be the usual Ramsey number: the smallest $n$ such that if the edges of $K_n$ are coloured red and blue then there exists either a red $K_k$ or a blue $K_l$. Prove the existence of some $c>0$ such that\[\lim_{k\to \infty}\frac{R(k+1,k)}{R(k,k)}> 1+c.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 323. Problem 545 - Score 48
- Site: https://www.erdosproblems.com/545
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A059442
- Statement: Let $G$ be a graph with $m$ edges and no isolated vertices. Is the Ramsey number $R(G)$ maximised when $G$ is 'as complete as possible'? That is, if $m=\binom{n}{2}+t$ edges with $0\leq t<n$ then is\[R(G)\leq R(H),\]where $H$ is the graph formed by connecting a new vertex to $t$ of the vertices of...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 324. Problem 790 - Score 48
- Site: https://www.erdosproblems.com/790
- Tags: additive combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $l(n)$ be maximal such that if $A\subset\mathbb{Z}$ with $\lvert A\rvert=n$ then there exists a sum-free $B\subseteq A$ with $\lvert B\rvert \geq l(n)$ - that is, $B$ is such that there are no solutions to\[a_1=a_2+\cdots+a_r\]with $a_i\in B$ all distinct. Estimate $l(n)$. In particular, is it...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 325. Problem 425 - Score 48
- Site: https://www.erdosproblems.com/425
- Tags: number theory, sidon sets
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $F(n)$ be the maximum possible size of a subset $A\subseteq\{1,\ldots,N\}$ such that the products $ab$ are distinct for all $a<b$. Is there a constant $c$ such that\[F(n)=\pi(n)+(c+o(1))n^{3/4}(\log n)^{-3/2}?\]If $A\subseteq \{1,\ldots,n\}$ is such that all products $a_1\cdots a_r$ are...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and sidon sets) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 326. Problem 539 - Score 48
- Site: https://www.erdosproblems.com/539
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $h(n)$ be such that, for any set $A\subseteq \mathbb{N}$ of size $n$, the set\[\left\{ \frac{a}{(a,b)}: a,b\in A\right\}\]has size at least $h(n)$. Estimate $h(n)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 327. Problem 507 - Score 48
- Site: https://www.erdosproblems.com/507
- Tags: geometry
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\alpha(n)$ be such that every set of $n$ points in the unit disk contains three points which determine a triangle of area at most $\alpha(n)$. Estimate $\alpha(n)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 328. Problem 1203 - Score 47
- Site: https://www.erdosproblems.com/1203
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: If $\omega(n)$ counts the number of distinct prime divisors of $n$ then let\[F(n)=\max_k \omega(n+k)\frac{\log\log k}{\log k}.\]Prove that $F(n)\to \infty$ as $n\to \infty$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 329. Problem 25 - Score 47
- Site: https://www.erdosproblems.com/25
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $1\leq n_1<n_2<\cdots$ be an arbitrary sequence of integers, each with an associated residue class $a_i\pmod{n_i}$. Let $A$ be the set of integers $n$ such that for every $i$ either $n<n_i$ or $n\not\equiv a_i\pmod{n_i}$. Must the logarithmic density of $A$ exist?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 330. Problem 725 - Score 47
- Site: https://www.erdosproblems.com/725
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: A001009
- Statement: Give an asymptotic formula for the number of $k\times n$ Latin rectangles .
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 331. Problem 544 - Score 47
- Site: https://www.erdosproblems.com/544
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A000791
- Statement: Show that\[R(3,k+1)-R(3,k)\to\infty\]as $k\to \infty$. Similarly, prove or disprove that\[R(3,k+1)-R(3,k)=o(k).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 332. Problem 411 - Score 47
- Site: https://www.erdosproblems.com/411
- Tags: number theory, iterated functions
- Prize: no; formalized: no; OEIS: A383044
- Statement: Let $g_1=g(n)=n+\phi(n)$ and $g_k(n)=g(g_{k-1}(n))$. For which $n$ and $r$ is it true that $g_{k+r}(n)=2g_k(n)$ for all large $k$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 333. Problem 555 - Score 47
- Site: https://www.erdosproblems.com/555
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: A389313
- Statement: Let $R_k(G)$ denote the minimal $m$ such that if the edges of $K_m$ are $k$-coloured then there is a monochromatic copy of $G$. Determine the value of\[R_k(C_{2n}).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 334. Problem 934 - Score 46
- Site: https://www.erdosproblems.com/934
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h_t(d)$ be minimal such that every graph $G$ with $h_t(d)$ edges and maximal degree $\leq d$ contains two edges whose shortest path between them has length $\geq t$. Estimate $h_t(d)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 335. Problem 614 - Score 46
- Site: https://www.erdosproblems.com/614
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n,k)$ be minimal such that there is a graph with $n$ vertices and $f(n,k)$ edges where every set of $k+2$ vertices induces a subgraph with maximum degree at least $k$. Determine $f(n,k)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 336. Problem 1033 - Score 46
- Site: https://www.erdosproblems.com/1033
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h(n)$ be such that every graph on $n$ vertices with $>n^2/4$ many edges contains a triangle whose vertices have degrees summing to at least $h(n)$. Estimate $h(n)$. In particular, is it true that\[h(n)\geq (2(\sqrt{3}-1)-o(1))n?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 337. Problem 345 - Score 46
- Site: https://www.erdosproblems.com/345
- Tags: number theory, complete sequences
- Prize: no; formalized: no; OEIS: A001661
- Statement: Let $A\subseteq \mathbb{N}$ be a complete sequence, and define the threshold of completeness $T(A)$ to be the least integer $m$ such that all $n\geq m$ are in\[P(A) = \left\{\sum_{n\in B}n : B\subseteq A\textrm{ finite }\right\}\](the existence of $T(A)$ is guaranteed by completeness). Is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and complete sequences) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 338. Problem 146 - Score 46
- Site: https://www.erdosproblems.com/146
- Tags: graph theory, turan number
- Prize: $500; formalized: no; OEIS: none
- Statement: If $H$ is bipartite and is $r$-degenerate, that is, every induced subgraph of $H$ has minimum degree $\leq r$, then\[\mathrm{ex}(n;H) \ll n^{2-1/r}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory and turan number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 339. Problem 197 - Score 46
- Site: https://www.erdosproblems.com/197
- Tags: arithmetic progressions
- Prize: no; formalized: yes; OEIS: none
- Statement: Can $\mathbb{N}$ be partitioned into two sets, each of which can be permuted to avoid monotone 3-term arithmetic progressions?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (arithmetic progressions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 340. Problem 428 - Score 45
- Site: https://www.erdosproblems.com/428
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a set $A\subseteq \mathbb{N}$ such that, for infinitely many $n$, all of $n-a$ are prime for all $a\in A$ with $0 0?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 341. Problem 195 - Score 45
- Site: https://www.erdosproblems.com/195
- Tags: arithmetic progressions
- Prize: no; formalized: yes; OEIS: none
- Statement: What is the largest $k$ such that in any permutation of $\mathbb{Z}$ there must exist a monotone $k$-term arithmetic progression $x_1<\cdots<x_k$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (arithmetic progressions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 342. Problem 942 - Score 45
- Site: https://www.erdosproblems.com/942
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $h(n)$ count the number of powerful (if $p\mid m$ then $p^2\mid m$) integers in $[n^2,(n+1)^2)$. Estimate $h(n)$. In particular is there some constant $c>0$ such that\[h(n) (\log n)^{c-o(1)}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 343. Problem 535 - Score 45
- Site: https://www.erdosproblems.com/535
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $r\geq 3$, and let $f_r(N)$ denote the size of the largest subset of $\{1,\ldots,N\}$ such that no subset of size $r$ has the same pairwise greatest common divisor between all elements. Estimate $f_r(N)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 344. Problem 1101 - Score 45
- Site: https://www.erdosproblems.com/1101
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: If $u=\{u_1 0$, if $x$ is sufficiently large then\[\max_{a_k<x} (a_{k+1}-a_k) < (1+\epsilon)t_x \prod_{i}\left(1-\frac{1}{u_i}\right)^{-1}.\]Is there a good sequence such that $u_n< n^{O(1)}$? Is there a good sequence such that $u_n\leq e^{o(n)}$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 345. Problem 536 - Score 45
- Site: https://www.erdosproblems.com/536
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $f(N)$ be the largest size of $A\subseteq \{1,\ldots,N\}$ with the property that there are no distinct $a,b,c\in A$ such that\[[a,b]=[b,c]=[a,c],\]where $[a,b]$ denotes the least common multiple. Estimate $f(N)$ - in particular, is it true that $f(N)=o(N)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 346. Problem 688 - Score 44
- Site: https://www.erdosproblems.com/688
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Define $\epsilon_n$ to be maximal such that there exists some choice of congruence class $a_p$ for all primes $n^{\epsilon_n}<p\leq n$ such that every integer in $[1,n]$ satisfies at least one of the congruences $\equiv a_p\pmod{p}$. Estimate $\epsilon_n$ - in particular is it true that...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 347. Problem 620 - Score 44
- Site: https://www.erdosproblems.com/620
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: If $G$ is a graph on $n$ vertices without a $K_4$ then how large a triangle-free induced subgraph must $G$ contain?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 348. Problem 1011 - Score 44
- Site: https://www.erdosproblems.com/1011
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f_r(n)$ be minimal such that every graph on $n$ vertices with $\geq f_r(n)$ edges and chromatic number $\geq r$ contains a triangle. Determine $f_r(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 349. Problem 187 - Score 44
- Site: https://www.erdosproblems.com/187
- Tags: additive combinatorics, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Find the best function $f(d)$ such that, in any 2-colouring of the integers, at least one colour class contains an arithmetic progression with common difference $d$ of length $f(d)$ for infinitely many $d$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (additive combinatorics and ramsey theory) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 350. Problem 810 - Score 44
- Site: https://www.erdosproblems.com/810
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Does there exist some $\epsilon>0$ such that, for all sufficiently large $n$, there exists a graph $G$ on $n$ vertices with at least $\epsilon n^2$ many edges such that the edges can be coloured with $n$ colours so that every $C_4$ receives $4$ distinct colours?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 351. Problem 1075 - Score 44
- Site: https://www.erdosproblems.com/1075
- Tags: hypergraphs
- Prize: no; formalized: no; OEIS: none
- Statement: Let $r\geq 3$. There exists $c_r>r^{-r}$ such that, for any $\epsilon>0$, if $n$ is sufficiently large, the following holds. Any $r$-uniform hypergraph on $n$ vertices with at least $(1+\epsilon)(n/r)^r$ many edges contains a subgraph on $m$ vertices with at least $c_rm^r$ edges, where $m=m(n)\to...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (hypergraphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 352. Problem 86 - Score 43
- Site: https://www.erdosproblems.com/86
- Tags: graph theory
- Prize: $100; formalized: no; OEIS: A245762
- Statement: Let $Q_n$ be the $n$-dimensional hypercube graph (so that $Q_n$ has $2^n$ vertices and $n2^{n-1}$ edges). Is it true that every subgraph of $Q_n$ with\[\geq \left(\frac{1}{2}+o(1)\right)n2^{n-1}\]many edges contains a $C_4$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 353. Problem 774 - Score 43
- Site: https://www.erdosproblems.com/774
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: We call $A\subset \mathbb{N}$ dissociated if $\sum_{n\in X}n\neq \sum_{m\in Y}m$ for all finite $X,Y\subset A$ with $X\neq Y$. Let $A\subset \mathbb{N}$ be an infinite set. We call $A$ proportionately dissociated if every finite $B\subset A$ contains a dissociated set of size $\gg \lvert B\rvert$....
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 354. Problem 978 - Score 43
- Site: https://www.erdosproblems.com/978
- Tags: number theory
- Prize: no; formalized: yes; OEIS: possible
- Statement: Let $f\in \mathbb{Z}[x]$ be an irreducible polynomial of degree $k>2$ (and suppose that $k\neq 2^l$ for any $l\geq 1$) such that the leading coefficient of $f$ is positive. Does the set of integers $n\geq 1$ for which $f(n)$ is $(k-1)$-power-free have positive density? If $k>3$, and for all primes...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 355. Problem 354 - Score 43
- Site: https://www.erdosproblems.com/354
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\alpha,\beta\in \mathbb{R}_{>0}$ such that $\alpha/\beta$ is irrational. Is the multiset\[\{ \lfloor \alpha\rfloor,\lfloor 2\alpha\rfloor,\lfloor 4\alpha\rfloor,\ldots\}\cup \{ \lfloor \beta\rfloor,\lfloor 2\beta\rfloor,\lfloor 4\beta\rfloor,\ldots\}\]complete? That is, can all sufficiently...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 356. Problem 569 - Score 43
- Site: https://www.erdosproblems.com/569
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $k\geq 1$. What is the best possible $c_k$ such that\[R(C_{2k+1},H)\leq c_k m\]for any graph $H$ on $m$ edges without isolated vertices?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 357. Problem 668 - Score 43
- Site: https://www.erdosproblems.com/668
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: A385657
- Statement: Is it true that the number of incongruent sets of $n$ points in $\mathbb{R}^2$ which maximise the number of unit distances tends to infinity as $n\to\infty$? Is it always $>1$ for $n>3$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 358. Problem 222 - Score 43
- Site: https://www.erdosproblems.com/222
- Tags: number theory, squares
- Prize: no; formalized: no; OEIS: A256435
- Statement: Let $n_1<n_2<\cdots$ be the sequence of integers which are the sum of two squares. Explore the behaviour of (i.e. find good upper and lower bounds for) the consecutive differences $n_{k+1}-n_k$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and squares) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, known-best bounds, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 359. Problem 811 - Score 42
- Site: https://www.erdosproblems.com/811
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Suppose $n\equiv 1\pmod{m}$. We say that an edge-colouring of $K_n$ using $m$ colours is balanced if every vertex sees exactly $\lfloor n/m\rfloor$ many edges of each colours. For which graphs $G$ is it true that, if $m=e(G)$, for all large $n\equiv 1\pmod{m}$, every balanced edge-colouring of...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 360. Problem 233 - Score 42
- Site: https://www.erdosproblems.com/233
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: A074741
- Statement: Let $d_n=p_{n+1}-p_n$, where $p_n$ is the $n$th prime. Prove that\[\sum_{1\leq n\leq N}d_n^2 \ll N(\log N)^2.\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 361. Problem 244 - Score 42
- Site: https://www.erdosproblems.com/244
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $C>1$. Does the set of integers of the form $p+\lfloor C^k\rfloor$, for some prime $p$ and $k\geq 0$, have density $>0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 362. Problem 234 - Score 42
- Site: https://www.erdosproblems.com/234
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: For every $c\geq 0$ the density $f(c)$ of integers for which\[\frac{p_{n+1}-p_n}{\log n}< c\]exists and is a continuous function of $c$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 363. Problem 12 - Score 42
- Site: https://www.erdosproblems.com/12
- Tags: number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A$ be an infinite set such that there are no distinct $a,b,c\in A$ such that $a\mid (b+c)$ and $b,c>a$. Is there such an $A$ with\[\liminf \frac{\lvert A\cap\{1,\ldots,N\}\rvert}{N^{1/2}}>0?\]Does there exist some absolute constant $c>0$ such that there are always infinitely many $N$...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 364. Problem 99 - Score 42
- Site: https://www.erdosproblems.com/99
- Tags: geometry, distances
- Prize: $100; formalized: yes; OEIS: none
- Statement: Let $A\subseteq\mathbb{R}^2$ be a set of $n$ points with minimum distance equal to 1, chosen to minimise the diameter of $A$. If $n$ is sufficiently large then must there be three points in $A$ which form an equilateral triangle of size 1?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 365. Problem 129 - Score 41
- Site: https://www.erdosproblems.com/129
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $R(n;k,r)$ be the smallest $N$ such that if the edges of $K_N$ are $r$-coloured then there is a set of $n$ vertices which does not contain a copy of $K_k$ in at least one of the $r$ colours. Prove that there is a constant $C=C(r)>1$ such that\[R(n;3,r) < C^{\sqrt{n}}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 366. Problem 667 - Score 41
- Site: https://www.erdosproblems.com/667
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $p,q\geq 1$ be fixed integers. We define $H(n)=H(N;p,q)$ to be the largest $m$ such that any graph on $n$ vertices where every set of $p$ vertices spans at least $q$ edges must contain a complete graph on $m$ vertices. Is\[c(p,q)=\liminf \frac{\log H(n)}{\log n}\]a strictly increasing function...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 367. Problem 1066 - Score 41
- Site: https://www.erdosproblems.com/1066
- Tags: graph theory, planar graphs
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $G$ be a graph given by $n$ points in $\mathbb{R}^2$, where any two distinct points are at least distance $1$ apart, and we draw an edge between two points if they are distance $1$ apart. Let $g(n)$ be maximal such that any such graph always has an independent set on at least $g(n)$ vertices....
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and planar graphs) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 368. Problem 616 - Score 41
- Site: https://www.erdosproblems.com/616
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $r\geq 3$. For an $r$-uniform hypergraph $G$ let $\tau(G)$ denote the covering number (or transversal number), the minimum size of a set of vertices which includes at least one from each edge in $G$. Determine the best possible $t$ such that, if $G$ is an $r$-uniform hypergraph $G$ where every...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 369. Problem 151 - Score 41
- Site: https://www.erdosproblems.com/151
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: For a graph $G$ let $\tau(G)$ denote the minimal number of vertices that include at least one from each maximal clique of $G$ on at least two vertices (sometimes called the clique transversal number). Let $H(n)$ be maximal such that every triangle-free graph on $n$ vertices contains an independent...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 370. Problem 149 - Score 41
- Site: https://www.erdosproblems.com/149
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: The strong chromatic index of a graph $G$, denoted by $\mathrm{sq}(G)$, is the minimum $k$ such that the edges of $G$ can be partitioned into $k$ sets of 'strongly independent' edges, that is, such that the subgraph of $G$ induced by each set is the union of vertex-disjoint edges. Is it true that,...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 371. Problem 778 - Score 40
- Site: https://www.erdosproblems.com/778
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: Alice and Bob play a game on the edges of $K_n$, alternating colouring edges by red (Alice) and blue (Bob). Alice goes first, and wins if at the end the largest red clique is larger than any of the blue cliques. Does Bob have a winning strategy for $n\geq 3$? (Erd\H{o}s believed the answer is yes.)...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 372. Problem 238 - Score 40
- Site: https://www.erdosproblems.com/238
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $c_1,c_2>0$. Is it true that, for any sufficiently large $x$, there exist more than $c_1\log x$ many consecutive primes $\leq x$ such that the difference between any two is $>c_2$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 373. Problem 188 - Score 40
- Site: https://www.erdosproblems.com/188
- Tags: geometry, ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: What is the smallest $k$ such that $\mathbb{R}^2$ can be red/blue coloured with no pair of red points unit distance apart, and no $k$-term arithmetic progression of blue points with distance $1$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 374. Problem 949 - Score 40
- Site: https://www.erdosproblems.com/949
- Tags: ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $S\subset \mathbb{R}$ be a set containing no solutions to $a+b=c$. Must there be a set $A\subseteq \mathbb{R}\backslash S$ of cardinality continuum such that $A+A\subseteq \mathbb{R}\backslash S$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 375. Problem 196 - Score 40
- Site: https://www.erdosproblems.com/196
- Tags: arithmetic progressions
- Prize: no; formalized: yes; OEIS: none
- Statement: Must every permutation of $\mathbb{N}$ contain a monotone 4-term arithmetic progression? In other words, given a permutation $x$ of $\mathbb{N}$ must there be indices with either $i j>k>l$ such that $x_i,x_j,x_k,x_l$ are an arithmetic progression?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (arithmetic progressions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 376. Problem 680 - Score 40
- Site: https://www.erdosproblems.com/680
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: Is it true that, for all sufficiently large $n$, there exists some $k$ such that\[p(n+k)>k^2+1,\]where $p(m)$ denotes the least prime factor of $m$? Can one prove this is false if we replace $k^2+1$ by $e^{(1+\epsilon)\sqrt{k}}+C_\epsilon$, for all $\epsilon>0$, where $C_\epsilon>0$ is some...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 377. Problem 20 - Score 39
- Site: https://www.erdosproblems.com/20
- Tags: combinatorics
- Prize: $1000; formalized: yes; OEIS: A332077
- Statement: Let $f(n,k)$ be minimal such that every family $\mathcal{F}$ of $n$-uniform sets with $\lvert \mathcal{F}\rvert \geq f(n,k)$ contains a $k$-sunflower. Is it true that\[f(n,k) 0$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 378. Problem 181 - Score 39
- Site: https://www.erdosproblems.com/181
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $Q_n$ be the $n$-dimensional hypercube graph (so that $Q_n$ has $2^n$ vertices and $n2^{n-1}$ edges). Prove that\[R(Q_n) \ll 2^n.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 379. Problem 805 - Score 39
- Site: https://www.erdosproblems.com/805
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: For which functions $g(n)$ with $n>g(n)\geq (\log n)^2$ is there a graph on $n$ vertices in which every induced subgraph on $g(n)$ vertices contains a clique of size $\geq \log n$ and an independent set of size $\geq \log n$? In particular, is there such a graph for $g(n)=(\log n)^3$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 380. Problem 813 - Score 39
- Site: https://www.erdosproblems.com/813
- Tags: graph theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h(n)$ be minimal such that every graph on $n$ vertices where every set of $7$ vertices contains a triangle (a copy of $K_3$) must contain a clique on at least $h(n)$ vertices. Estimate $h(n)$ - in particular, do there exist constants $c_1,c_2>0$ such that\[n^{1/3+c_1}\ll h(n) \ll n^{1/2-c_2}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 381. Problem 612 - Score 39
- Site: https://www.erdosproblems.com/612
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a connected graph with $n$ vertices, minimum degree $d$, and diameter $D$. Show if that $G$ contains no $K_{2r}$ and $(r-1)(3r+2)\mid d$ then\[D\leq \frac{2(r-1)(3r+2)}{2r^2-1}\frac{n}{d}+O(1),\]and if $G$ contains no $K_{2r+1}$ and $3r-1 \mid d$ then\[D\leq...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 382. Problem 550 - Score 39
- Site: https://www.erdosproblems.com/550
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $m_1\leq\cdots\leq m_k$ and $n$ be sufficiently large. If $T$ is a tree on $n$ vertices and $G$ is the complete multipartite graph with vertex class sizes $m_1,\ldots,m_k$ then prove that\[R(T,G)\leq (\chi(G)-1)(R(T,K_{m_1,m_2})-1)+m_1.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 383. Problem 560 - Score 38
- Site: https://www.erdosproblems.com/560
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $\hat{R}(G)$ denote the size Ramsey number, the minimal number of edges $m$ such that there is a graph $H$ with $m$ edges such that in any $2$-colouring of the edges of $H$ there is a monochromatic copy of $G$. Determine\[\hat{R}(K_{n,n}),\]where $K_{n,n}$ is the complete bipartite graph with...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 384. Problem 911 - Score 38
- Site: https://www.erdosproblems.com/911
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\hat{R}(G)$ denote the size Ramsey number, the minimal number of edges $m$ such that there is a graph $H$ with $m$ edges that is Ramsey for $G$. Is there a function $f$ such that $f(x)/x\to \infty$ as $x\to \infty$ such that, for all large $C$, if $G$ is a graph with $n$ vertices and $e\geq...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 385. Problem 611 - Score 38
- Site: https://www.erdosproblems.com/611
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: For a graph $G$ let $\tau(G)$ denote the minimal number of vertices that include at least one from each maximal clique of $G$ (sometimes called the clique transversal number). Is it true that if all maximal cliques in $G$ have at least $cn$ vertices then $\tau(G)=o_c(n)$? Similarly, estimate for...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 386. Problem 1155 - Score 38
- Site: https://www.erdosproblems.com/1155
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: Construct a random graph on $n$ vertices in the following way: begin with the complete graph $K_n$. At each stage, choose uniformly a random triangle in the graph and delete all the edges of this triangle. Repeat until the graph is triangle-free. Describe the typical parameters and structure of...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 387. Problem 883 - Score 38
- Site: https://www.erdosproblems.com/883
- Tags: number theory, graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: For $A\subseteq \{1,\ldots,n\}$ let $G(A)$ be the graph with vertex set $A$, where two integers are joined by an edge if they are coprime. Is it true that if\[\lvert A\rvert >\lfloor\tfrac{n}{2}\rfloor+\lfloor\tfrac{n}{3}\rfloor-\lfloor\tfrac{n}{6}\rfloor\]then $G(A)$ contains all odd cycles of...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and graph theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 388. Problem 200 - Score 38
- Site: https://www.erdosproblems.com/200
- Tags: primes, arithmetic progressions
- Prize: no; formalized: yes; OEIS: A005115
- Statement: Does the longest arithmetic progression of primes in $\{1,\ldots,N\}$ have length $o(\log N)$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (primes and arithmetic progressions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 389. Problem 508 - Score 38
- Site: https://www.erdosproblems.com/508
- Tags: geometry, ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: What is the chromatic number of the plane? That is, what is the smallest number of colours required to colour $\mathbb{R}^2$ such that no two points of the same colour are distance $1$ apart?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 390. Problem 463 - Score 37
- Site: https://www.erdosproblems.com/463
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: possible
- Statement: Is there a function $f$ with $f(n)\to \infty$ as $n\to \infty$ such that, for all large $n$, there is a composite number $m$ such that\[n+f(n)<m<n+p(m)?\](Here $p(m)$ is the least prime factor of $m$.)
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 391. Problem 918 - Score 37
- Site: https://www.erdosproblems.com/918
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a graph with $\aleph_2$ vertices and chromatic number $\aleph_2$ such that every subgraph on $\aleph_1$ vertices has chromatic number $\leq\aleph_0$? Is there a graph with $\aleph_{\omega+1}$ vertices and chromatic number $\aleph_1$ such that every subgraph on $\aleph_\omega$ vertices has...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 392. Problem 159 - Score 37
- Site: https://www.erdosproblems.com/159
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: There exists some constant $c>0$ such that $$R(C_4,K_n) \ll n^{2-c}.$$
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 393. Problem 1103 - Score 37
- Site: https://www.erdosproblems.com/1103
- Tags: number theory
- Prize: no; formalized: no; OEIS: A392164
- Statement: Let $A$ be an infinite sequence of integers such that every $n\in A+A$ is squarefree. How fast must $A$ grow?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 394. Problem 676 - Score 37
- Site: https://www.erdosproblems.com/676
- Tags: number theory
- Prize: no; formalized: no; OEIS: A390181
- Statement: Is every sufficiently large integer of the form\[ap^2+b\]for some prime $p$ and integer $a\geq 1$ and $0\leq b<p$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, computational evidence, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 395. Problem 1083 - Score 37
- Site: https://www.erdosproblems.com/1083
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: A186704
- Statement: Let $d\geq 3$, and let $f_d(n)$ be the minimal $m$ such that every set of $n$ points in $\mathbb{R}^d$ determines at least $m$ distinct distances. Estimate $f_d(n)$ - in particular, is it true that\[f_d(n)=n^{\frac{2}{d}-o(1)}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 396. Problem 890 - Score 36
- Site: https://www.erdosproblems.com/890
- Tags: number theory, primes
- Prize: no; formalized: yes; OEIS: none
- Statement: If $\omega_k(n)$ counts the number of distinct prime factors of $n$ which are $>k$, then is it true that, for every $k\geq 1$,\[\liminf_{n\to \infty}\sum_{0\leq i<k}\omega_k(n+i)\leq k?\]Is it true that\[\limsup_{n\to \infty}\left(\sum_{0\leq i<k}\omega(n+i)\right) \frac{\log\log n}{\log...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 397. Problem 3 - Score 36
- Site: https://www.erdosproblems.com/3
- Tags: number theory, additive combinatorics, arithmetic progressions
- Prize: $5000; formalized: yes; OEIS: A003002, A003003, A003004, A003005
- Statement: If $A\subseteq \mathbb{N}$ has $\sum_{n\in A}\frac{1}{n}=\infty$ then must $A$ contain arbitrarily long arithmetic progressions?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($5000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (number theory, additive combinatorics, and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 398. Problem 1160 - Score 36
- Site: https://www.erdosproblems.com/1160
- Tags: group theory
- Prize: no; formalized: no; OEIS: A000001
- Statement: Let $g(n)$ denote the number of groups of order $n$. If $n\leq 2^m$ then $g(n)\leq g(2^m)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (group theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 399. Problem 568 - Score 36
- Site: https://www.erdosproblems.com/568
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a graph such that $R(G,T_n)\ll n$ for any tree $T_n$ on $n$ vertices and $R(G,K_n)\ll n^2$. Is it true that, for any $H$ with $m$ edges and no isolated vertices,\[R(G,H)\ll m?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 400. Problem 557 - Score 36
- Site: https://www.erdosproblems.com/557
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $R_k(G)$ denote the minimal $m$ such that if the edges of $K_m$ are $k$-coloured then there is a monochromatic copy of $G$. Is it true that\[R_k(T)\leq kn+O(1)\]for any tree $T$ on $n$ vertices?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 401. Problem 554 - Score 36
- Site: https://www.erdosproblems.com/554
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $R_k(G)$ denote the minimal $m$ such that if the edges of $K_m$ are $k$-coloured then there is a monochromatic copy of $G$. Show that\[\lim_{k\to \infty}\frac{R_k(C_{2n+1})}{R_k(K_3)}=0\]for any $n\geq 2$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 402. Problem 322 - Score 35
- Site: https://www.erdosproblems.com/322
- Tags: number theory, powers
- Prize: no; formalized: no; OEIS: A025456, A025418
- Statement: Let $k\geq 3$ and $A\subset \mathbb{N}$ be the set of $k$th powers. What is the order of growth of $1_A^{(k)}(n)$, i.e. the number of representations of $n$ as the sum of $k$ many $k$th powers? Does there exist some $c>0$ and infinitely many $n$ such that\[1_A^{(k)}(n) >n^c?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and powers) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This sits near elementary number theory where Acorn already has gcd/lcm, congruences, factorisation, divisor sums, and finite-list infrastructure to build on. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 403. Problem 809 - Score 35
- Site: https://www.erdosproblems.com/809
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Define the anti-Ramsey number $\chi_S(n,e,G)$ as the smallest $r$ such that there is a graph with $n$ vertices and $e$ edges with an $r$-colouring of its edges in which every copy of $G$ has entirely distinct edge colours. Is it true that, for all $k\geq 3$,\[\chi_S(n, \lfloor...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 404. Problem 820 - Score 35
- Site: https://www.erdosproblems.com/820
- Tags: number theory
- Prize: no; formalized: no; OEIS: A263647
- Statement: Let $H(n)$ be the smallest integer $l$ such that there exist $k 0$ such that, for all $\epsilon>0$,\[H(n) > \exp(n^{(c-\epsilon)/\log\log n})\]for infinitely many $n$ and\[H(n) < \exp(n^{(c+\epsilon)/\log\log n})\]for all large enough $n$? Does a similar upper bound hold for the smallest $k$ such...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 405. Problem 1182 - Score 35
- Site: https://www.erdosproblems.com/1182
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be maximal such that there is a connected graph $G$ with $n$ vertices and $f(n)$ edges such that\[R(K_3,G)= 2n-1.\]Let $F(n)$ be maximal such that every connected graph $G$ with $n$ vertices and $\leq F(n)$ edges has\[R(K_3,G)= 2n-1.\]Estimate $f(n)$ and $F(n)$. In particular, is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 406. Problem 1135 - Score 35
- Site: https://www.erdosproblems.com/1135
- Tags: number theory
- Prize: $500; formalized: yes; OEIS: A006370, A008908
- Statement: Define $f:\mathbb{N}\to \mathbb{N}$ by $f(n)=n/2$ if $n$ is even and $f(n)=\frac{3n+1}{2}$ if $n$ is odd. Given any integer $m\geq 1$ does there exist $k\geq 1$ such that $f^{(k)}(m)=1$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 407. Problem 123 - Score 35
- Site: https://www.erdosproblems.com/123
- Tags: number theory
- Prize: $250; formalized: yes; OEIS: none
- Statement: Let $a,b,c\geq 1$ be three integers which are pairwise coprime. Is every large integer the sum of distinct integers of the form $a^kb^lc^m$ ($k,l,m\geq 0$), none of which divide any other?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 408. Problem 368 - Score 34
- Site: https://www.erdosproblems.com/368
- Tags: number theory
- Prize: no; formalized: no; OEIS: A074399
- Statement: How large is the largest prime factor of $n(n+1)$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 409. Problem 1053 - Score 34
- Site: https://www.erdosproblems.com/1053
- Tags: number theory
- Prize: no; formalized: no; OEIS: A007539
- Statement: Call a number $k$-perfect if $\sigma(n)=kn$, where $\sigma(n)$ is the sum of the divisors of $n$. Must $k=o(\log\log n)$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 410. Problem 821 - Score 34
- Site: https://www.erdosproblems.com/821
- Tags: number theory
- Prize: no; formalized: no; OEIS: A014197
- Statement: Let $g(n)$ count the number of $m$ such that $\phi(m)=n$. Is it true that, for every $\epsilon>0$, there exist infinitely many $n$ such that\[g(n) > n^{1-\epsilon}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 411. Problem 928 - Score 34
- Site: https://www.erdosproblems.com/928
- Tags: number theory
- Prize: no; formalized: no; OEIS: A006530
- Statement: Let $\alpha,\beta\in (0,1)$ and let $P(n)$ denote the largest prime divisor of $n$. Does the density of integers $n$ such that $P(n)<n^{\alpha}$ and $P(n+1)<(n+1)^\beta$ exist?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 412. Problem 657 - Score 34
- Site: https://www.erdosproblems.com/657
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: Is it true that if $A\subset \mathbb{R}^2$ is a set of $n$ points such that every subset of $3$ points determines $3$ distinct distances (i.e. $A$ has no isosceles triangles) then $A$ must determine at least $f(n)n$ distinct distances, for some $f(n)\to \infty$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 413. Problem 162 - Score 34
- Site: https://www.erdosproblems.com/162
- Tags: combinatorics, ramsey theory, discrepancy
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\alpha>0$ and $n\geq 1$. Let $F(n,\alpha)$ be the largest $k$ such that there exists some 2-colouring of the edges of $K_n$ in which any induced subgraph $H$ on at least $k$ vertices contains more than $\alpha\binom{\lvert H\rvert}{2}$ many edges of each colour. Prove that for every fixed...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics, ramsey theory, and discrepancy) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 414. Problem 561 - Score 33
- Site: https://www.erdosproblems.com/561
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\hat{R}(G)$ denote the size Ramsey number, the minimal number of edges $m$ such that there is a graph $H$ with $m$ edges such that in any $2$-colouring of the edges of $H$ there is a monochromatic copy of $G$. Let $F_1$ and $F_2$ be the union of stars. More precisely, let $F_1=\cup_{i\leq s}...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 415. Problem 183 - Score 33
- Site: https://www.erdosproblems.com/183
- Tags: graph theory, ramsey theory
- Prize: $250; formalized: no; OEIS: A003323
- Statement: Let $R(3;k)$ be the minimal $n$ such that if the edges of $K_n$ are coloured with $k$ colours then there must exist a monochromatic triangle. Determine\[\lim_{k\to \infty}R(3;k)^{1/k}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 416. Problem 1086 - Score 33
- Site: https://www.erdosproblems.com/1086
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $g(n)$ be minimal such that any set of $n$ points in $\mathbb{R}^2$ contains the vertices of at most $g(n)$ many triangles with the same area. Estimate $g(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has equivalent formulation, known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 417. Problem 112 - Score 33
- Site: https://www.erdosproblems.com/112
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k=k(n,m)$ be minimal such that any directed graph on $k$ vertices must contain either an independent set of size $n$ or a transitive tournament of size $m$. Determine $k(n,m)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 418. Problem 609 - Score 33
- Site: https://www.erdosproblems.com/609
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be the minimal $m$ such that if the edges of $K_{2^n+1}$ are coloured with $n$ colours then there must be a monochromatic odd cycle of length at most $m$. Estimate $f(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 419. Problem 734 - Score 33
- Site: https://www.erdosproblems.com/734
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Find, for all large $n$, a non-trivial pairwise balanced block design $A_1,\ldots,A_m\subseteq \{1,\ldots,n\}$ such that, for all $t$, there are $O(n^{1/2})$ many $i$ such that $\lvert A_i\rvert=t$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 420. Problem 1159 - Score 33
- Site: https://www.erdosproblems.com/1159
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: Determine whether there exists a constant $C>1$ such that the following holds. Let $P$ be a finite projective plane . Must there exist a set of points $S$ such that $1\leq \lvert S\cap \ell\rvert \leq C$ for all lines $\ell$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 421. Problem 472 - Score 32
- Site: https://www.erdosproblems.com/472
- Tags: number theory
- Prize: no; formalized: no; OEIS: A389713
- Statement: Given some initial finite sequence of primes $q_1<\cdots<q_m$ extend it so that $q_{n+1}$ is the smallest prime of the form $q_n+q_i-1$ for $n\geq m$. Is there an initial starting sequence so that the resulting sequence is infinite?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 422. Problem 558 - Score 32
- Site: https://www.erdosproblems.com/558
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $R_k(G)$ denote the minimal $m$ such that if the edges of $K_m$ are $k$-coloured then there is a monochromatic copy of $G$. Determine\[R_k(K_{s,t})\]where $K_{s,t}$ is the complete bipartite graph with $s$ vertices in one component and $t$ in the other.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 423. Problem 436 - Score 32
- Site: https://www.erdosproblems.com/436
- Tags: number theory
- Prize: no; formalized: no; OEIS: A000445
- Statement: If $p$ is a prime and $k,m\geq 2$ then let $r(k,m,p)$ be the minimal $r$ such that $r,r+1,\ldots,r+m-1$ are all $k$th power residues modulo $p$. Let\[\Lambda(k,m)=\limsup_{p\to \infty} r(k,m,p).\]Is it true that $\Lambda(k,2)$ is finite for all $k$? Is $\Lambda(k,3)$ finite for all odd $k$? How...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 424. Problem 740 - Score 32
- Site: https://www.erdosproblems.com/740
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\mathfrak{m}$ be an infinite cardinal and $G$ be a graph with chromatic number $\mathfrak{m}$. Let $r\geq 1$. Must $G$ contain a subgraph of chromatic number $\mathfrak{m}$ which does not contain any odd cycle of length $\leq r$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 425. Problem 142 - Score 32
- Site: https://www.erdosproblems.com/142
- Tags: additive combinatorics, arithmetic progressions
- Prize: $10000; formalized: yes; OEIS: A003002, A003003, A003004, A003005
- Statement: Let $r_k(N)$ be the largest possible size of a subset of $\{1,\ldots,N\}$ that does not contain any non-trivial $k$-term arithmetic progression. Prove an asymptotic formula for $r_k(N)$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($10000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (additive combinatorics and arithmetic progressions) are valuable because the needed sumset/Sidon/finite-interval infrastructure would support a broad cluster of Erdos problems. This points toward a reusable finite-set/additive-combinatorics library: sumsets, difference sets, Sidon predicates, interval density, and extremal functions. The page has OEIS links, known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 426. Problem 1057 - Score 32
- Site: https://www.erdosproblems.com/1057
- Tags: number theory
- Prize: no; formalized: no; OEIS: A006931
- Statement: Let $C(x)$ count the number of Carmichael numbers in the interval $[1,x]$. Is it true that $C(x)=x^{1-o(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 427. Problem 103 - Score 31
- Site: https://www.erdosproblems.com/103
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h(n)$ count the number of incongruent sets of $n$ points in $\mathbb{R}^2$ which minimise the diameter subject to the constraint that $d(x,y)\geq 1$ for all points $x\neq y$. Is it true that $h(n)\to \infty$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 428. Problem 776 - Score 31
- Site: https://www.erdosproblems.com/776
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $r\geq 2$ and $A_1,\ldots,A_m\subseteq \{1,\ldots,n\}$ be such that $A_i\not\subseteq A_j$ for all $i\neq j$ and for any $t$ if there exists some $i$ with $\lvert A_i\rvert=t$ then there must exist at least $r$ sets of that size. How large must $n$ be (as a function of $r$) to ensure that there...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 429. Problem 80 - Score 31
- Site: https://www.erdosproblems.com/80
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $c>0$ and let $f_c(n)$ be the maximal $m$ such that every graph $G$ with $n$ vertices and at least $cn^2$ edges, where each edge is contained in at least one triangle, must contain a book of size $m$, that is, an edge shared by at least $m$ different triangles. Estimate $f_c(n)$. In particular,...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 430. Problem 1029 - Score 31
- Site: https://www.erdosproblems.com/1029
- Tags: graph theory, ramsey theory
- Prize: $100; formalized: no; OEIS: A059442
- Statement: If $R(k)$ is the Ramsey number for $K_k$, the minimal $n$ such that every $2$-colouring of the edges of $K_n$ contains a monochromatic copy of $K_k$, then\[\frac{R(k)}{k2^{k/2}}\to \infty.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 431. Problem 670 - Score 31
- Site: https://www.erdosproblems.com/670
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A\subseteq \mathbb{R}^d$ be a set of $n$ points such that all pairwise distances differ by at least $1$. Is the diameter of $A$ at least $(1+o(1))n^2$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 432. Problem 423 - Score 31
- Site: https://www.erdosproblems.com/423
- Tags: number theory
- Prize: no; formalized: no; OEIS: A005243
- Statement: Let $a_1=1$ and $a_2=2$ and for $k\geq 3$ choose $a_k$ to be the least integer $>a_{k-1}$ which is the sum of at least two consecutive terms of the sequence. What is the asymptotic behaviour of this sequence?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 433. Problem 665 - Score 30
- Site: https://www.erdosproblems.com/665
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: A pairwise balanced design for $\{1,\ldots,n\}$ is a collection of sets $A_1,\ldots,A_m\subseteq \{1,\ldots,n\}$ such that $2\leq \lvert A_i\rvert 0$ and, for all large $n$, a pairwise balanced design such that\[\lvert A_i\rvert > n^{1/2}-C\]for all $1\leq i\leq m$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 434. Problem 854 - Score 30
- Site: https://www.erdosproblems.com/854
- Tags: number theory
- Prize: no; formalized: no; OEIS: A389839, A048670
- Statement: Let $n_k$ denote the $k$th primorial, i.e. the product of the first $k$ primes. If $1=a_1<a_2<\cdots a_{\phi(n_k)}=n_k-1$ is the sequence of integers coprime to $n_k$, then estimate the smallest even integer not of the form $a_{i+1}-a_i$. Are there\[\gg \max_i (a_{i+1}-a_i)\]many even integers of...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 435. Problem 78 - Score 30
- Site: https://www.erdosproblems.com/78
- Tags: graph theory, ramsey theory
- Prize: $100; formalized: no; OEIS: A059442
- Statement: Let $R(k)$ be the Ramsey number for $K_k$, the minimal $n$ such that every $2$-colouring of the edges of $K_n$ contains a monochromatic copy of $K_k$. Give a constructive proof that $R(k)>C^k$ for some constant $C>1$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 436. Problem 143 - Score 30
- Site: https://www.erdosproblems.com/143
- Tags: primitive sets
- Prize: $500; formalized: yes; OEIS: none
- Statement: Let $A\subset (1,\infty)$ be a countably infinite set such that for all $x\neq y\in A$ and integers $k\geq 1$ we have\[ \lvert kx -y\rvert \geq 1.\]Does this imply that $A$ is sparse? In particular, does this imply that\[\sum_{x\in A}\frac{1}{x\log x}<\infty\]or\[\sum_{\substack{x <n\\ x\in...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (primitive sets) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 437. Problem 382 - Score 30
- Site: https://www.erdosproblems.com/382
- Tags: number theory
- Prize: no; formalized: no; OEIS: A388850
- Statement: Let $u\leq v$ be such that the largest prime dividing $\prod_{u\leq m\leq v}m$ appears with exponent at least $2$. Is it true that $v-u=v^{o(1)}$? Can $v-u$ be arbitrarily large?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 438. Problem 1207 - Score 30
- Site: https://www.erdosproblems.com/1207
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $P_d(n)$ be such that in any set of $n$ points in $\mathbb{R}^d$ there exist at least $P_d(n)$ many points which do not contain an isosceles triangle. Estimate $P_d(n)$ - in particular, is it true that\[P_2(n) 0$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 439. Problem 217 - Score 29
- Site: https://www.erdosproblems.com/217
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: For which $n$ are there $n$ points in $\mathbb{R}^2$, no three on a line and no four on a circle, which determine $n-1$ distinct distances and so that (in some ordering of the distances) the $i$th distance occurs $i$ times?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 440. Problem 644 - Score 29
- Site: https://www.erdosproblems.com/644
- Tags: combinatorics
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(k,r)$ be minimal such that if $A_1,A_2,\ldots$ is a family of sets, all of size $k$, such that for every collection of $r$ of the $A_is$ there is some pair $\{x,y\}$ which intersects all of the $A_j$, then there is some set of size $f(k,r)$ which intersects all of the sets $A_i$. Is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 441. Problem 935 - Score 29
- Site: https://www.erdosproblems.com/935
- Tags: number theory
- Prize: no; formalized: no; OEIS: A057521, A389244
- Statement: For any integer $n=\prod p^{k_p}$ let $Q_2(n)$ be the powerful part of $n$, so that\[Q_2(n) = \prod_{\substack{p\\ k_p\geq 2}}p^{k_p}.\]Is it true that, for every $\epsilon>0$ and $\ell\geq 1$, if $n$ is sufficiently large then\[Q_2(n(n+1)\cdots(n+\ell))<n^{2+\epsilon}?\]If $\ell\geq 2$ then...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 442. Problem 75 - Score 29
- Site: https://www.erdosproblems.com/75
- Tags: graph theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there a graph of chromatic number $\aleph_1$ with $\aleph_1$ vertices such that for all $\epsilon>0$ if $n$ is sufficiently large and $H$ is a subgraph on $n$ vertices then $H$ contains an independent set of size $>n^{1-\epsilon}$? What about an independent set of size $\gg n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 443. Problem 50 - Score 29
- Site: https://www.erdosproblems.com/50
- Tags: number theory
- Prize: $250; formalized: yes; OEIS: none
- Statement: Schoenberg proved that for every $c\in [0,1]$ the density of\[\{ n\in \mathbb{N} : \phi(n)<cn\}\]exists. Let this density be denoted by $f(c)$. Is it true that there are no $x$ such that $f'(x)$ exists and is positive?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 444. Problem 1163 - Score 29
- Site: https://www.erdosproblems.com/1163
- Tags: group theory
- Prize: no; formalized: no; OEIS: none
- Statement: Describe (by statistical means) the arithmetic structure of the orders of subgroups of $S_n$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (group theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 445. Problem 365 - Score 29
- Site: https://www.erdosproblems.com/365
- Tags: number theory
- Prize: no; formalized: no; OEIS: A060355, A060859, A175155
- Statement: Do all pairs of consecutive powerful numbers $n$ and $n+1$ come from solutions to Pell equations ? In other words, must either $n$ or $n+1$ be a square? Is the number of such $n\leq x$ bounded by $(\log x)^{O(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 446. Problem 769 - Score 28
- Site: https://www.erdosproblems.com/769
- Tags: number theory, geometry
- Prize: no; formalized: no; OEIS: A014544
- Statement: Let $c(n)$ be minimal such that if $k\geq c(n)$ then the $n$-dimensional unit cube can be decomposed into $k$ homothetic $n$-dimensional cubes. Give good bounds for $c(n)$ - in particular, is it true that $c(n) \gg n^n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 447. Problem 1109 - Score 28
- Site: https://www.erdosproblems.com/1109
- Tags: number theory
- Prize: no; formalized: no; OEIS: A392164, A392165
- Statement: Let $f(N)$ be the size of the largest subset $A\subseteq \{1,\ldots,N\}$ such that every $n\in A+A$ is squarefree. Estimate $f(N)$. In particular, is it true that $f(N)\leq N^{o(1)}$, or even $f(N) \leq (\log N)^{O(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 448. Problem 367 - Score 28
- Site: https://www.erdosproblems.com/367
- Tags: number theory
- Prize: no; formalized: no; OEIS: A057521
- Statement: Let $B_2(n)$ be the $2$-full part of $n$ (that is, $B_2(n)=n/n'$ where $n'$ is the product of all primes that divide $n$ exactly once). Is it true that, for every fixed $k\geq 1$,\[\prod_{n\leq m<n+k}B_2(m) \ll n^{2+o(1)}?\]Or perhaps even $\ll_k n^2$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 449. Problem 1204 - Score 28
- Site: https://www.erdosproblems.com/1204
- Tags: number theory
- Prize: no; formalized: no; OEIS: A008407, A023193, A135311
- Statement: We call a sequence of integers $0\leq a_1<\cdots <a_k$ admissible if it is missing at least one congruence class modulo every prime $p$. Let $A(k)=\min a_k$. Estimate $A(k)$ - in particular, is it true that\[A(k)\sim k\log k?\]Estimate\[B(k)=\min \frac{a_1+\cdots+a_k}{k}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 450. Problem 430 - Score 28
- Site: https://www.erdosproblems.com/430
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Fix some integer $n$ and define a decreasing sequence in $[1,n)$ by $a_1=n-1$ and, for $k\geq 2$, letting $a_k$ be the greatest integer in $[1,a_{k-1})$ such that all of the prime factors of $a_k$ are $>n-a_k$. Is it true that, for sufficiently large $n$, not all of this sequence can be prime?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 451. Problem 662 - Score 28
- Site: https://www.erdosproblems.com/662
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: none
- Statement: Consider the triangular lattice with minimal distance between two points $1$. Denote by $f(t)$ the number of distances from any points $\leq t$. For example $f(1)=6$, $f(\sqrt{3})=12$, and $f(3)=18$. Let $x_1,\ldots,x_n\in \mathbb{R}^2$ be such that $d(x_i,x_j)\geq 1$ for all $i\neq j$. Is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 452. Problem 165 - Score 27
- Site: https://www.erdosproblems.com/165
- Tags: graph theory, ramsey theory
- Prize: $250; formalized: no; OEIS: A000791
- Statement: Give an asymptotic formula for $R(3,k)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 453. Problem 126 - Score 27
- Site: https://www.erdosproblems.com/126
- Tags: number theory
- Prize: $250; formalized: yes; OEIS: possible
- Statement: Let $f(n)$ be maximal such that if $A\subseteq\mathbb{N}$ has $\lvert A\rvert=n$ then $\prod_{a\neq b\in A}(a+b)$ has at least $f(n)$ distinct prime factors. Is it true that $f(n)/\log n\to\infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 454. Problem 933 - Score 27
- Site: https://www.erdosproblems.com/933
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: If $n(n+1)=2^k3^lm$, where $(m,6)=1$, then is it true that\[\limsup_{n\to \infty} \frac{2^k3^l}{n\log n}=\infty?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 455. Problem 451 - Score 27
- Site: https://www.erdosproblems.com/451
- Tags: number theory
- Prize: no; formalized: no; OEIS: A386620
- Statement: Estimate $n_k$, the smallest integer $>2k$ such that $\prod_{1\leq i\leq k}(n_k-i)$ has no prime factor in $(k,2k)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 456. Problem 5 - Score 27
- Site: https://www.erdosproblems.com/5
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: A001223
- Statement: Let $C\geq 0$. Is there an infinite sequence of $n_i$ such that\[\lim_{i\to \infty}\frac{p_{n_i+1}-p_{n_i}}{\log n_i}=C?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, equivalent formulation, finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 457. Problem 432 - Score 27
- Site: https://www.erdosproblems.com/432
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A,B\subseteq \mathbb{N}$ be two infinite sets. How dense can $A+B$ be if all elements of $A+B$ are pairwise relatively prime?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 458. Problem 660 - Score 26
- Site: https://www.erdosproblems.com/660
- Tags: geometry, distances, convex
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $x_1,\ldots,x_n\in \mathbb{R}^3$ be the vertices of a convex polyhedron. Are there at least\[(1-o(1))\frac{n}{2}\]many distinct distances between the $x_i$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry, distances, and convex) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 459. Problem 334 - Score 26
- Site: https://www.erdosproblems.com/334
- Tags: number theory
- Prize: no; formalized: no; OEIS: A062241, A045535
- Statement: Find the best function $f(n)$ such that every $n$ can be written as $n=a+b$ where both $a,b$ are $f(n)$-smooth (that is, are not divisible by any prime $p>f(n)$.)
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 460. Problem 969 - Score 26
- Site: https://www.erdosproblems.com/969
- Tags: number theory
- Prize: no; formalized: no; OEIS: A013928
- Statement: Let $Q(x)$ count the number of squarefree integers in $[1,x]$. Determine the order of magnitude in the error term in the asymptotic\[Q(x)=\frac{6}{\pi^2}x+E(x).\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 461. Problem 388 - Score 26
- Site: https://www.erdosproblems.com/388
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Can one classify all solutions of\[\prod_{1\leq i\leq k_1}(m_1+i)=\prod_{1\leq j\leq k_2}(m_2+j)\]where $k_1,k_2>3$ and $m_1+k_1\leq m_2$? Are there only finitely many solutions?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 462. Problem 1087 - Score 26
- Site: https://www.erdosproblems.com/1087
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be minimal such that every set of $n$ points in $\mathbb{R}^2$ contains at most $f(n)$ many sets of four points which are 'degenerate' in the sense that some pair are the same distance apart. Estimate $f(n)$ - in particular, is it true that $f(n)\leq n^{3+o(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 463. Problem 529 - Score 26
- Site: https://www.erdosproblems.com/529
- Tags: geometry, probability
- Prize: no; formalized: no; OEIS: none
- Statement: Let $d_k(n)$ be the expected distance from the origin after taking $n$ random steps from the origin in $\mathbb{Z}^k$ (conditional on no self intersections) - that is, a self-avoiding walk . Is it true that\[\lim_{n\to \infty}\frac{d_2(n)}{n^{1/2}}= \infty?\]Is it true that\[d_k(n)\ll n^{1/2}\]for...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and probability) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 464. Problem 654 - Score 25
- Site: https://www.erdosproblems.com/654
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be such that, given any $x_1,\ldots,x_n\in \mathbb{R}^2$ with no four points on a circle, there exists some $x_i$ with at least $f(n)$ many distinct distances to other $x_j$. Estimate $f(n)$ - in particular, is it true that\[f(n)>(1-o(1))n?\]Or at least\[f(n) > (1/3+c)n\]for some $c>0$,...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 465. Problem 74 - Score 25
- Site: https://www.erdosproblems.com/74
- Tags: graph theory, chromatic number, cycles
- Prize: $500; formalized: yes; OEIS: none
- Statement: Let $f(n)\to \infty$ (possibly very slowly). Is there a graph of infinite chromatic number such that every finite subgraph on $n$ vertices can be made bipartite by deleting at most $f(n)$ edges?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags and statement (graph theory, chromatic number, and cycles) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 466. Problem 663 - Score 25
- Site: https://www.erdosproblems.com/663
- Tags: number theory
- Prize: no; formalized: no; OEIS: A391668
- Statement: Let $k\geq 2$ and $q(n,k)$ denote the least prime which does not divide $\prod_{1\leq i\leq k}(n+i)$. Is it true that, if $k$ is fixed and $n$ is sufficiently large, we have\[q(n,k)<(1+o(1))\log n?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 467. Problem 528 - Score 25
- Site: https://www.erdosproblems.com/528
- Tags: geometry
- Prize: no; formalized: no; OEIS: A387897, A156816
- Statement: Let $f(n,k)$ count the number of self-avoiding walks of $n$ steps (beginning at the origin) in $\mathbb{Z}^k$ (i.e. those walks which do not intersect themselves). Determine\[C_k=\lim_{n\to\infty}f(n,k)^{1/n}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 468. Problem 131 - Score 25
- Site: https://www.erdosproblems.com/131
- Tags: number theory
- Prize: no; formalized: no; OEIS: A068063
- Statement: Let $F(N)$ be the maximal size of $A\subseteq\{1,\ldots,N\}$ such that no $a\in A$ divides the sum of any distinct elements of $A\backslash\{a\}$. Estimate $F(N)$. In particular, is it true that\[F(N) > N^{1/2-o(1)}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 469. Problem 839 - Score 25
- Site: https://www.erdosproblems.com/839
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $1\leq a_1<a_2<\cdots$ be a sequence of integers such that no $a_i$ is the sum of consecutive $a_j$ for $j<i$. Is it true that\[\limsup \frac{a_n}{n}=\infty?\]Or even\[\lim \frac{1}{\log x}\sum_{a_n<x}\frac{1}{a_n}=0?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 470. Problem 122 - Score 24
- Site: https://www.erdosproblems.com/122
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: For which number theoretic functions $f$ is it true that, for any $F(n)$ such that $F(n)/f(n)\to 0$ for almost all $n$, there are infinitely many $x$ such that\[\frac{\#\{ n\in \mathbb{N} : n+f(n)\in (x,x+F(x))\}}{F(x)}\to \infty?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 471. Problem 970 - Score 24
- Site: https://www.erdosproblems.com/970
- Tags: number theory
- Prize: no; formalized: no; OEIS: A048669
- Statement: Let $h(k)$ be Jacobsthal's function, defined to as the minimal $m$ such that, if $n$ has at most $k$ prime factors, then in any set of $m$ consecutive integers there exists an integer coprime to $n$. Determine the order of magnitude of $h(k)$. In particular, is it true that\[h(k) \ll k^2?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 472. Problem 768 - Score 24
- Site: https://www.erdosproblems.com/768
- Tags: number theory
- Prize: no; formalized: no; OEIS: A001034, A352287
- Statement: Let $A\subset\mathbb{N}$ be the set of $n$ such that for every prime $p\mid n$ there exists some $d\mid n$ with $d>1$ such that $d\equiv 1\pmod{p}$. Is it true that there exists some constant $c>0$ such that for all large $N$\[\frac{\lvert A\cap [1,N]\rvert}{N}=\exp(-(c+o(1))\sqrt{\log N}\log\log...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 473. Problem 1110 - Score 24
- Site: https://www.erdosproblems.com/1110
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $p>q\geq 2$ be two coprime integers. We call $n$ representable if it is the sum of integers of the form $p^kq^l$, none of which divide each other. If $\{p,q\}\neq \{2,3\}$ then what can be said about the density of non-representable numbers? Are there infinitely many coprime non-representable...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 474. Problem 954 - Score 24
- Site: https://www.erdosproblems.com/954
- Tags: number theory
- Prize: no; formalized: no; OEIS: A390642
- Statement: Let $0=a_0<a_1<a_2<\cdots$ be the sequence of integers defined by $a_0=0$ and $a_1=1$, and $a_{k+1}$ is the smallest integer $n$ for which the number of solutions to $a_i+a_j \leq n$ (with $0\leq i\leq j\leq k$ and $j\geq 1$) is $<n$. Is the number of solutions to $a_i+a_j \leq x$ equal to...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 475. Problem 669 - Score 24
- Site: https://www.erdosproblems.com/669
- Tags: geometry
- Prize: no; formalized: no; OEIS: A003035, A006065, A008997
- Statement: Let $F_k(n)$ be minimal such that for any $n$ points in $\mathbb{R}^2$ there exist at most $F_k(n)$ many distinct lines passing through at least $k$ of the points, and $f_k(n)$ similarly but with lines passing through exactly $k$ points. Estimate $f_k(n)$ and $F_k(n)$ - in particular, determine...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 476. Problem 374 - Score 24
- Site: https://www.erdosproblems.com/374
- Tags: number theory
- Prize: no; formalized: no; OEIS: A388851, A387184, A389117, A389148
- Statement: For any $m\in \mathbb{N}$, let $F(m)$ be the minimal $k\geq 2$ (if it exists) such that there are $a_1<\cdots <a_k=m$ with $a_1!\cdots a_k!$ a square. Let $D_k=\{ m : F(m)=k\}$. What is the order of growth of $\lvert D_k\cap\{1,\ldots,n\}\rvert$ for $3\leq k\leq 6$? For example, is it true that...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 477. Problem 1183 - Score 23
- Site: https://www.erdosproblems.com/1183
- Tags: combinatorics, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be maximal such that in any $2$-colouring of the subsets of $\{1,\ldots,n\}$ there is always a monochromatic family of at least $f(n)$ sets which is closed under taking unions and intersections. Estimate $f(n)$. Let $F(n)$ be defined similarly, except that we only require the family be...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (combinatorics and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 478. Problem 77 - Score 23
- Site: https://www.erdosproblems.com/77
- Tags: graph theory, ramsey theory
- Prize: $250; formalized: no; OEIS: A059442
- Statement: If $R(k)$ is the Ramsey number for $K_k$, the minimal $n$ such that every $2$-colouring of the edges of $K_n$ contains a monochromatic copy of $K_k$, then find the value of\[\lim_{k\to \infty}R(k)^{1/k}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags (graph theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 479. Problem 625 - Score 23
- Site: https://www.erdosproblems.com/625
- Tags: graph theory, chromatic number
- Prize: $1000; formalized: no; OEIS: none
- Statement: The cochromatic number of $G$, denoted by $\zeta(G)$, is the minimum number of colours needed to colour the vertices of $G$ such that each colour class induces either a complete graph or empty graph. Let $\chi(G)$ denote the chromatic number. If $G$ is a random graph with $n$ vertices and each edge...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (graph theory and chromatic number) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 480. Problem 829 - Score 23
- Site: https://www.erdosproblems.com/829
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $A\subset\mathbb{N}$ be the set of cubes. Is it true that\[1_A\ast 1_A(n) \ll (\log n)^{O(1)}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 481. Problem 1208 - Score 23
- Site: https://www.erdosproblems.com/1208
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: possible
- Statement: For $d\geq 2$ let $F_d(n)$ be minimal such that every set of $n$ points in $\mathbb{R}^d$ contains a set of $F_d(n)$ points with distinct distances. Estimate $F_d(n)$ for fixed $d$ as $n\to \infty$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 482. Problem 953 - Score 23
- Site: https://www.erdosproblems.com/953
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A\subset \{ x\in \mathbb{R}^2 : \lvert x\rvert <r\}$ be a measurable set with no integer distances, that is, such that $\lvert a-b\rvert \not\in \mathbb{Z}$ for any distinct $a,b\in A$. How large can the measure of $A$ be?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 483. Problem 1144 - Score 22
- Site: https://www.erdosproblems.com/1144
- Tags: number theory, probability
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f$ be a random completely multiplicative function, where for each prime $p$ we independently choose $f(p)\in \{-1,1\}$ uniformly at random. Is it true that\[\limsup_{N\to \infty}\frac{\sum_{m\leq N}f(m)}{\sqrt{N}}=\infty\]with probability $1$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and probability) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 484. Problem 782 - Score 22
- Site: https://www.erdosproblems.com/782
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Do the squares contain arbitrarily long quasi-progressions? That is, does there exist some constant $C>0$ such that, for any $k$, the squares contain a sequence $x_1,\ldots,x_k$ where, for some $d$ and all $1\leq i<k$,\[x_i+d\leq x_{i+1}\leq x_i+d+C.\]Do the squares contain arbitrarily large...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 485. Problem 408 - Score 22
- Site: https://www.erdosproblems.com/408
- Tags: number theory, iterated functions
- Prize: no; formalized: no; OEIS: A049108
- Statement: Let $\phi(n)$ be the Euler totient function and $\phi_k(n)$ be the iterated $\phi$ function, so that $\phi_1(n)=\phi(n)$ and $\phi_k(n)=\phi(\phi_{k-1}(n))$. Let\[f(n) = \min \{ k : \phi_k(n)=1\}.\]Does $f(n)/\log n$ have a distribution function? Is $f(n)/\log n$ almost always constant? What can be...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and iterated functions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 486. Problem 878 - Score 22
- Site: https://www.erdosproblems.com/878
- Tags: number theory
- Prize: no; formalized: no; OEIS: A339378
- Statement: If $n=\prod_{1\leq i\leq t} p_i^{k_i}$ is the factorisation of $n$ into distinct primes then let\[f(n)=\sum p_i^{\ell_i},\]where $\ell_i$ is chosen such that $n\in [p_i^{\ell_i},p_i^{\ell_i+1})$. Furthermore, let\[F(n)=\max \sum_{i} a_i\]where the maximum is taken over all distinct...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 487. Problem 1162 - Score 22
- Site: https://www.erdosproblems.com/1162
- Tags: group theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Give an asymptotic formula for the number of subgroups of $S_n$. Is there a statistical theorem on their order?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (group theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 488. Problem 852 - Score 22
- Site: https://www.erdosproblems.com/852
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: A001223, A053597, A078515
- Statement: Let $d_n=p_{n+1}-p_n$, where $p_n$ is the $n$th prime. Let $h(x)$ be maximal such that for some $n (\log x)^c\]for some constant $c>0$, and\[h(x)=o(\log x)?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 489. Problem 1005 - Score 21
- Site: https://www.erdosproblems.com/1005
- Tags: number theory
- Prize: no; formalized: no; OEIS: A386893
- Statement: Let $\frac{a_1}{b_1},\frac{a_2}{b_2},\ldots$ be the Farey fractions of order $n\geq 4$. Let $f(n)$ be the largest integer such that if $1\leq k 0$ such that $f(n)=(c+o(1))n$ for all large $n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 490. Problem 691 - Score 21
- Site: https://www.erdosproblems.com/691
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Given $A\subseteq \mathbb{N}$ let $M_A=\{ n \geq 1 : a\mid n\textrm{ for some }a\in A\}$ be the set of multiples of $A$. Find a necessary and sufficient condition on $A$ for $M_A$ to have density $1$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 491. Problem 635 - Score 21
- Site: https://www.erdosproblems.com/635
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $t\geq 1$ and $A\subseteq \{1,\ldots,N\}$ be such that whenever $a,b\in A$ with $b-a\geq t$ we have $b-a\nmid b$. How large can $\lvert A\rvert$ be? Is it true that\[\lvert A\rvert \leq \left(\frac{1}{2}+o_t(1)\right)N?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 492. Problem 879 - Score 21
- Site: https://www.erdosproblems.com/879
- Tags: number theory
- Prize: no; formalized: no; OEIS: A186736
- Statement: Call a set $S\subseteq \{1,\ldots,n\}$ admissible if $(a,b)=1$ for all $a\neq b\in S$. Let\[G(n) = \max_{S\subseteq \{1,\ldots,n\}} \sum_{a\in S}a\]and\[H(n)=\sum_{p H(n)-n^{1+o(1)}?\]Is it true that, for every $k\geq 2$, if $n$ is sufficiently large then the admissible set which maximises $G(n)$...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 493. Problem 1209 - Score 21
- Site: https://www.erdosproblems.com/1209
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $A=\{a_1<a_2<\cdots\}$ be a sequence of integers which tends to infinity sufficiently fast. If there is an $n$ such that all $n+a_k$ are primes then must there exist infinitely many such $n$? What if we ask for $n+a_k$ to be squarefree instead of prime? Are there $n$ such that $n+2^{2^k}$ is...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 494. Problem 420 - Score 21
- Site: https://www.erdosproblems.com/420
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: If $\tau(n)$ counts the number of divisors of $n$ then let\[F(f,n)=\frac{\tau((n+\lfloor f(n)\rfloor)!)}{\tau(n!)}.\]Is it true that\[\lim_{n\to \infty}F((\log n)^C,n)=\infty\]for large $C$? Is it true that $F(\log n,n)$ is everywhere dense in $(1,\infty)$? More generally, if $f(n)\leq \log n$ is a...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 495. Problem 522 - Score 20
- Site: https://www.erdosproblems.com/522
- Tags: analysis, polynomials, probability
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $f(z)=\sum_{0\leq k\leq n} \epsilon_k z^k$ be a random polynomial, where $\epsilon_k\in \{-1,1\}$ independently uniformly at random for $0\leq k\leq n$. Is it true that, if $R_n$ is the number of roots of $f(z)$ in $\{ z\in \mathbb{C} : \lvert z\rvert \leq 1\}$, then\[\frac{R_n}{n/2}\to...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis, polynomials, and probability) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 496. Problem 1146 - Score 20
- Site: https://www.erdosproblems.com/1146
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: We say that $A\subset \mathbb{N}$ is an essential component if $d_s(A+B)>d_s(B)$ for every $B\subset \mathbb{N}$ with $0 Schnirelmann density . Is $B=\{2^m3^n : m,n\geq 0\}$ an essential component?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 497. Problem 1070 - Score 20
- Site: https://www.erdosproblems.com/1070
- Tags: geometry
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be maximal such that, given any $n$ points in $\mathbb{R}^2$, there exist $f(n)$ points such that no two are distance $1$ apart. Estimate $f(n)$. In particular, is it true that $f(n)\geq n/4$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 498. Problem 177 - Score 20
- Site: https://www.erdosproblems.com/177
- Tags: discrepancy, arithmetic progressions
- Prize: no; formalized: no; OEIS: none
- Statement: Find the smallest $h(d)$ such that the following holds. There exists a function $f:\mathbb{N}\to\{-1,1\}$ such that, for every $d\geq 1$,\[\max_{P_d}\left\lvert \sum_{n\in P_d}f(n)\right\rvert\leq h(d),\]where $P_d$ ranges over all finite arithmetic progressions with common difference $d$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (discrepancy and arithmetic progressions) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 499. Problem 456 - Score 20
- Site: https://www.erdosproblems.com/456
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $p_n$ be the smallest prime $\equiv 1\pmod{n}$ and let $m_n$ be the smallest integer such that $n\mid \phi(m_n)$. Is it true that $m_n<p_n$ for almost all $n$? Does $p_n/m_n\to \infty$ for almost all $n$? Are there infinitely many primes $p$ such that $p-1$ is the only $n$ for which $m_n=p$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 500. Problem 467 - Score 20
- Site: https://www.erdosproblems.com/467
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Prove the following for all large $x$: there is a choice of congruence classes $a_p$ for all primes $p\leq x$ and a decomposition $\{p\leq x\}=A\sqcup B$ into two non-empty sets such that, for all $n<x$, there exist some $p\in A$ and $q\in B$ such that $n\equiv a_p\pmod{p}$ and $n\equiv...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 501. Problem 679 - Score 19
- Site: https://www.erdosproblems.com/679
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\epsilon>0$ and $\omega(n)$ count the number of distinct prime factors of $n$. Are there infinitely many values of $n$ such that\[\omega(n-k) < (1+\epsilon)\frac{\log k}{\log\log k}\]for all $k<n$ which are sufficiently large depending on $\epsilon$ only? Can one show the stronger version...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 502. Problem 959 - Score 19
- Site: https://www.erdosproblems.com/959
- Tags: geometry, distances
- Prize: no; formalized: no; OEIS: none
- Statement: Let $A\subset \mathbb{R}^2$ be a set of size $n$ and let $\{d_1,\ldots,d_k\}$ be the set of distinct distances determined by $A$. Let $f(d)$ be the number of times the distance $d$ is determined, and suppose the $d_i$ are ordered such that\[f(d_1)\geq f(d_2)\geq \cdots \geq f(d_k).\]Estimate\[\max...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 503. Problem 104 - Score 19
- Site: https://www.erdosproblems.com/104
- Tags: geometry
- Prize: $100; formalized: no; OEIS: A003829
- Statement: Given $n$ points in $\mathbb{R}^2$ the number of distinct unit circles containing at least three points is $o(n^2)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 504. Problem 661 - Score 19
- Site: https://www.erdosproblems.com/661
- Tags: geometry, distances
- Prize: $50; formalized: no; OEIS: possible
- Statement: Are there, for all large $n$, some points $x_1,\ldots,x_n,y_1,\ldots,y_n\in \mathbb{R}^2$ such that the number of distinct distances $d(x_i,y_j)$ is\[o\left(\frac{n}{\sqrt{\log n}}\right)?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($50) is small, so it is only a mild difficulty signal. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 505. Problem 251 - Score 19
- Site: https://www.erdosproblems.com/251
- Tags: number theory, irrationality
- Prize: no; formalized: yes; OEIS: A098990
- Statement: Is\[\sum \frac{p_n}{2^n}\]irrational? (Here $p_n$ is the $n$th prime.)
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (number theory and irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 506. Problem 249 - Score 19
- Site: https://www.erdosproblems.com/249
- Tags: number theory, irrationality
- Prize: no; formalized: yes; OEIS: A256936
- Statement: Is\[\sum_n \frac{\phi(n)}{2^n}\]irrational? Here $\phi$ is the Euler totient function .
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (number theory and irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 507. Problem 495 - Score 19
- Site: https://www.erdosproblems.com/495
- Tags: diophantine approximation, number theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\alpha,\beta \in \mathbb{R}$. Is it true that\[\liminf_{n\to \infty} n \| n\alpha \| \| n\beta\| =0\]where $\|x\|$ is the distance from $x$ to the nearest integer?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (diophantine approximation and number theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 508. Problem 1150 - Score 18
- Site: https://www.erdosproblems.com/1150
- Tags: analysis, polynomials
- Prize: no; formalized: yes; OEIS: none
- Statement: Does there exist a constant $c>0$ such that, for all large $n$ and all polynomials $P$ of degree $n$ with coefficients $\pm 1$,\[\max_{\lvert z\rvert=1}\lvert P(z)\rvert > (1+c)\sqrt{n}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 509. Problem 824 - Score 18
- Site: https://www.erdosproblems.com/824
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h(x)$ count the number of integers $1\leq a x^{2-o(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 510. Problem 726 - Score 18
- Site: https://www.erdosproblems.com/726
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: As $n\to \infty$ ranges over integers\[\sum_{p\leq n}1_{n\in (p/2,p)\pmod{p}}\frac{1}{p}\sim \frac{\log\log n}{2}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 511. Problem 452 - Score 18
- Site: https://www.erdosproblems.com/452
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $\omega(n)$ count the number of distinct prime factors of $n$. What is the size of the largest interval $I\subseteq [x,2x]$ such that $\omega(n)>\log\log n$ for all $n\in I$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 512. Problem 117 - Score 18
- Site: https://www.erdosproblems.com/117
- Tags: group theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h(n)$ be minimal such that any group $G$ with the property that any subset of $>n$ elements contains some $x\neq y$ such that $xy=yx$ can be covered by at most $h(n)$ many Abelian subgroups. Estimate $h(n)$ as well as possible.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (group theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 513. Problem 174 - Score 18
- Site: https://www.erdosproblems.com/174
- Tags: geometry, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: A finite set $A\subset \mathbb{R}^n$ is called Ramsey if, for any $k\geq 1$, there exists some $d=d(A,k)$ such that in any $k$-colouring of $\mathbb{R}^d$ there exists a monochromatic copy of $A$. Characterise the Ramsey sets in $\mathbb{R}^n$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 514. Problem 948 - Score 17
- Site: https://www.erdosproblems.com/948
- Tags: number theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Is there a function $f(n)$ and a $k$ such that in any $k$-colouring of the integers there exists a sequence $a_1<\cdots$ such that $a_n<f(n)$ for infinitely many $n$ and the set\[\left\{ \sum_{i\in S}a_i : \textrm{finite }S\right\}\]does not contain all colours?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 515. Problem 415 - Score 17
- Site: https://www.erdosproblems.com/415
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: For any $n$ let $F(n)$ be the largest $k$ such that any of the $k!$ possible ordering patterns appears in some sequence of $\phi(m+1),\ldots,\phi(m+k)$ with $m+k\leq n$. Is it true that\[F(n)=(c+o(1))\log\log\log n\]for some constant $c$? Is the first pattern which fails to appear...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 516. Problem 956 - Score 17
- Site: https://www.erdosproblems.com/956
- Tags: geometry, distances, convex
- Prize: no; formalized: no; OEIS: possible
- Statement: If $C,D\subseteq \mathbb{R}^2$ then the distance between $C$ and $D$ is defined by\[\delta(C,D)=\inf_{\substack{c\in C\\ d\in D}}\| c-d\|.\]Let $h(n)$ be the maximal number of unit distances between disjoint convex translates. That is, the maximal $m$ such that there is a compact convex set...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry, distances, and convex) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 517. Problem 595 - Score 17
- Site: https://www.erdosproblems.com/595
- Tags: graph theory, set theory
- Prize: $250; formalized: yes; OEIS: none
- Statement: Is there an infinite graph $G$ which contains no $K_4$ and is not the union of countably many triangle-free graphs?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags and statement (graph theory and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 518. Problem 1143 - Score 17
- Site: https://www.erdosproblems.com/1143
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: none
- Statement: Let $p_1 2$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 519. Problem 173 - Score 17
- Site: https://www.erdosproblems.com/173
- Tags: geometry, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: In any $2$-colouring of $\mathbb{R}^2$, for all but at most one triangle $T$, there is a monochromatic congruent copy of $T$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 520. Problem 1181 - Score 16
- Site: https://www.erdosproblems.com/1181
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $q(n,k)$ denote the least prime which does not divide $\prod_{1\leq i\leq k}(n+i)$. Is it true that there exists some $c>0$ such that, for all large $n$,\[q(n,\log n)<(1-c)(\log n)^2?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 521. Problem 983 - Score 16
- Site: https://www.erdosproblems.com/983
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $n\geq 2$ and $\pi(n) r$ many $a\in A$ are only divisible by primes from $\{p_1,\ldots,p_r\}$. Is it true that\[2\pi(n^{1/2})-f(\pi(n)+1,n)\to \infty\]as $n\to \infty$? In general, estimate $f(k,n)$, particularly when $\pi(n)+1<k=o(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 522. Problem 929 - Score 16
- Site: https://www.erdosproblems.com/929
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k\geq 2$ be large and let $S(k)$ be the minimal $x$ such that there is a positive density set of $n$ where\[n+1,n+2,\ldots,n+k\]are all divisible by primes $\leq x$. Estimate $S(k)$ - in particular, is it true that $S(k)\geq k^{1-o(1)}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 523. Problem 1088 - Score 16
- Site: https://www.erdosproblems.com/1088
- Tags: geometry
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f_d(n)$ be the minimal $m$ such that any set of $m$ points in $\mathbb{R}^d$ contains a set of $n$ points such that any two determined distances are distinct. Estimate $f_d(n)$. In particular, is it true that, for fixed $n\geq 3$,\[f_d(n)=2^{o(d)}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 524. Problem 796 - Score 16
- Site: https://www.erdosproblems.com/796
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k\geq 2$ and let $g_k(n)$ be the largest possible size of $A\subseteq \{1,\ldots,n\}$ such that every $m$ has $<k$ solutions to $m=a_1a_2$ with $a_1<a_2\in A$. Is it true that\[g_3(n)=\frac{\log\log n}{\log n}n+(c+o(1))\frac{n}{\log n}\]for some constant $c$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 525. Problem 102 - Score 16
- Site: https://www.erdosproblems.com/102
- Tags: geometry
- Prize: no; formalized: no; OEIS: none
- Statement: Let $c>0$ and $h_c(n)$ be such that for any $n$ points in $\mathbb{R}^2$ such that there are $\geq cn^2$ lines each containing more than three points, there must be some line containing $h_c(n)$ many points. Estimate $h_c(n)$. Is it true that, for fixed $c>0$, we have $h_c(n)\to \infty$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 526. Problem 963 - Score 15
- Site: https://www.erdosproblems.com/963
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be the maximal $k$ such that in any set $A\subset \mathbb{R}$ of size $n$ there is a subset $B\subseteq A$ of size $\lvert B\rvert\geq k$ which is dissociated that is, the sums $\sum_{b\in S}b$ are distinct for all $S\subseteq B$. Estimate $f(n)$ - in particular, is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 527. Problem 252 - Score 15
- Site: https://www.erdosproblems.com/252
- Tags: number theory, irrationality
- Prize: no; formalized: yes; OEIS: A227988, A227989
- Statement: Let $k\geq 1$ and $\sigma_k(n)=\sum_{d\mid n}d^k$. Is\[\sum \frac{\sigma_k(n)}{n!}\]irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (number theory and irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 528. Problem 510 - Score 15
- Site: https://www.erdosproblems.com/510
- Tags: analysis
- Prize: no; formalized: yes; OEIS: none
- Statement: If $A\subset \mathbb{Z}$ is a finite set of size $N$ then is there some absolute constant $c>0$ and $\theta$ such that\[\sum_{n\in A}\cos(n\theta) < -cN^{1/2}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 529. Problem 838 - Score 15
- Site: https://www.erdosproblems.com/838
- Tags: geometry, convex
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be maximal such that any $n$ points in $\mathbb{R}^2$, with no three on a line, determine at least $f(n)$ different convex subsets. Estimate $f(n)$ - in particular, does there exist a constant $c$ such that\[\lim \frac{\log f(n)}{(\log n)^2}=c?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry and convex) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 530. Problem 1212 - Score 15
- Site: https://www.erdosproblems.com/1212
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $G$ be the graph with vertex set those pairs $(x,y)\in \mathbb{N}^2$ with $\mathrm{gcd}(x,y)=1$, in which we join two vertices if the differ in only one coordinate, and there by $\pm 1$. Is there a path going to infinity on $G$, say $P$, such that for all $(x,y)\in P$ both $\min(x,y)>1$ and at...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 531. Problem 976 - Score 15
- Site: https://www.erdosproblems.com/976
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f\in \mathbb{Z}[x]$ be an irreducible polynomial of degree $d\geq 2$. Let $F_f(n)$ be maximal such that there exists $1\leq m\leq n$ with $f(m)$ is divisible by a prime $\geq F_f(n)$. Equivalently, $F_f(n)$ is the greatest prime divisor of\[\prod_{1\leq m\leq n}f(m).\]Estimate $F_f(n)$. In...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has equivalent formulation, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 532. Problem 604 - Score 14
- Site: https://www.erdosproblems.com/604
- Tags: geometry, distances
- Prize: $500; formalized: no; OEIS: possible
- Statement: Given $n$ distinct points $A\subset\mathbb{R}^2$ must there be a point $x\in A$ such that\[\#\{ d(x,y) : y \in A\} \gg n^{1-o(1)}?\]Or even $\gg n/\sqrt{\log n}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (geometry and distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 533. Problem 588 - Score 14
- Site: https://www.erdosproblems.com/588
- Tags: geometry
- Prize: $100; formalized: no; OEIS: A006065, A008997
- Statement: Let $f_k(n)$ be minimal such that if $n$ points in $\mathbb{R}^2$ have no $k+1$ points on a line then there must be at most $f_k(n)$ many lines containing at least $k$ points. Is it true that\[f_k(n)=o(n^2)\]for $k\geq 4$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 534. Problem 517 - Score 14
- Site: https://www.erdosproblems.com/517
- Tags: analysis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $f(z)=\sum_{k=1}^\infty a_kz^{n_k}$ be an entire function (with $a_k\neq 0$ for all $k\geq 1$). Is it true that if $n_k/k\to \infty$ then $f(z)$ assumes every value infinitely often?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 535. Problem 906 - Score 14
- Site: https://www.erdosproblems.com/906
- Tags: analysis, iterated functions
- Prize: no; formalized: yes; OEIS: none
- Statement: Is there an entire non-zero function $f:\mathbb{C}\to \mathbb{C}$ such that, for any infinite sequence $n_1<n_2<\cdots$, the set\[\{ z: f^{(n_k)}(z)=0 \textrm{ for some }k\geq 1\}\]is everywhere dense?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and iterated functions) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 536. Problem 955 - Score 14
- Site: https://www.erdosproblems.com/955
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let\[s(n)=\sigma(n)-n=\sum_{\substack{d\mid n\\ d<n}}d\]be the sum of proper divisors function. If $A\subset \mathbb{N}$ has density $0$ then $s^{-1}(A)$ must also have density $0$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 537. Problem 589 - Score 14
- Site: https://www.erdosproblems.com/589
- Tags: geometry
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $g(n)$ be maximal such that in any set of $n$ points in $\mathbb{R}^2$ with no four points on a line there exists a subset on $g(n)$ points with no three points on a line. Estimate $g(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 538. Problem 827 - Score 14
- Site: https://www.erdosproblems.com/827
- Tags: geometry
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $n_k$ be minimal such that if $n_k$ points in $\mathbb{R}^2$ are in general position then there exists a subset of $k$ points such that all $\binom{k}{3}$ triples determine circles of different radii. Determine $n_k$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 539. Problem 831 - Score 13
- Site: https://www.erdosproblems.com/831
- Tags: geometry
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $h(n)$ be maximal such that in any $n$ points in $\mathbb{R}^2$ (with no three on a line and no four on a circle) there are at least $h(n)$ many circles of different radii passing through three points. Estimate $h(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 540. Problem 538 - Score 13
- Site: https://www.erdosproblems.com/538
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $r\geq 2$ and suppose that $A\subseteq\{1,\ldots,N\}$ is such that, for any $m$, there are at most $r$ solutions to $m=pa$ where $p$ is prime and $a\in A$. Give the best possible upper bound for\[\sum_{n\in A}\frac{1}{n}.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 541. Problem 1122 - Score 13
- Site: https://www.erdosproblems.com/1122
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f:\mathbb{N}\to \mathbb{R}$ be an additive function (i.e. $f(ab)=f(a)+f(b)$ whenever $(a,b)=1$). Let\[A=\{ n \geq 1: f(n+1)< f(n)\}.\]If $\lvert A\cap [1,X]\rvert =o(X)$ then must $f(n)=c\log n$ for some $c\in \mathbb{R}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 542. Problem 793 - Score 13
- Site: https://www.erdosproblems.com/793
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $F(n)$ be the maximum possible size of a subset $A\subseteq\{1,\ldots,n\}$ such that $a\nmid bc$ whenever $a,b,c\in A$ with $a\neq b$ and $a\neq c$. Is there a constant $C$ such that\[F(n)=\pi(n)+(C+o(1))n^{2/3}(\log n)^{-2}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 543. Problem 856 - Score 13
- Site: https://www.erdosproblems.com/856
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $k\geq 3$ and $f_k(N)$ be the maximum value of $\sum_{n\in A}\frac{1}{n}$, where $A$ ranges over all subsets of $\{1,\ldots,N\}$ which contain no subset of size $k$ with the same pairwise least common multiple. Estimate $f_k(N)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 544. Problem 709 - Score 13
- Site: https://www.erdosproblems.com/709
- Tags: number theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n)$ be minimal such that, for any $A=\{a_1,\ldots,a_n\}\subseteq [2,\infty)\cap\mathbb{N}$ of size $n$, in any interval $I$ of $f(n)\max(A)$ consecutive integers there exist distinct $x_1,\ldots,x_n\in I$ such that $a_i\mid x_i$. Obtain good bounds for $f(n)$, or even an asymptotic formula.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 545. Problem 460 - Score 12
- Site: https://www.erdosproblems.com/460
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $a_0=0$ and $a_1=1$, and in general define $a_k$ to be the least integer $>a_{k-1}$ for which $(n-a_k,n-a_i)=1$ for all $0\leq i<k$. Does\[\sum_{0<a_i< n}\frac{1}{a_i}\to \infty\]as $n\to \infty$? What about if we restrict the sum to those $i$ such that $n-a_j$ is divisible by some prime $\leq...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 546. Problem 634 - Score 12
- Site: https://www.erdosproblems.com/634
- Tags: geometry
- Prize: $25; formalized: no; OEIS: possible
- Statement: Find all $n$ such that there is at least one triangle which can be cut into $n$ congruent triangles.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($25) is small, so it is only a mild difficulty signal. The tags (geometry) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 547. Problem 257 - Score 12
- Site: https://www.erdosproblems.com/257
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $A\subseteq \mathbb{N}$ be an infinite set. Is\[\sum_{n\in A}\frac{1}{2^n-1}\]irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 548. Problem 462 - Score 12
- Site: https://www.erdosproblems.com/462
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: A032742
- Statement: Let $p(n)$ denote the least prime factor of $n$. There is a constant $c>0$ such that\[\sum_{\substack{n 0$ such that\[\sum_{x\leq n\leq x+Cx^{1/2}(\log x)^2}\frac{p(n)}{n} \gg 1\]for all large $x$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 549. Problem 860 - Score 12
- Site: https://www.erdosproblems.com/860
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: A048670, A058989
- Statement: Let $h(n)$ be such that, for any $m\geq 1$, in the interval $(m,m+h(n))$ there exist distinct integers $a_i$ for $1\leq i\leq \pi(n)$ such that $p_i\mid a_i$, where $p_i$ denotes the $i$th prime. Estimate $h(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 550. Problem 1201 - Score 12
- Site: https://www.erdosproblems.com/1201
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: possible
- Statement: Is it true that for every $\epsilon,\eta>0$ there exists a $k$ such that the density of $n$ for which\[P(n(n+1)\cdots(n+k))>n^{1-\epsilon}\]is at least $1-\eta$ (where $P(m)$ is the greatest prime divisor of $m$)?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 551. Problem 675 - Score 11
- Site: https://www.erdosproblems.com/675
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: We say that $A\subset \mathbb{N}$ has the translation property if, for every $n$, there exists some integer $t_n\geq 1$ such that, for all $1\leq a\leq n$,\[a\in A\quad\textrm{ if and only if }\quad a+t_n\in A.\]{UL} {LI}Does the set of the sums of two squares have the translation property?{/LI}...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 552. Problem 431 - Score 11
- Site: https://www.erdosproblems.com/431
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: none
- Statement: Are there two infinite sets $A$ and $B$ such that $A+B$ agrees with the set of prime numbers up to finitely many exceptions?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 553. Problem 950 - Score 11
- Site: https://www.erdosproblems.com/950
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: none
- Statement: Let\[f(n) = \sum_{p<n}\frac{1}{n-p}.\]Is it true that\[\liminf f(n)=1\]and\[\limsup f(n)=\infty?\]Is it true that $f(n)=o(\log\log n)$ for all $n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 554. Problem 161 - Score 11
- Site: https://www.erdosproblems.com/161
- Tags: combinatorics, ramsey theory, discrepancy
- Prize: $500; formalized: no; OEIS: none
- Statement: Let $\alpha\in[0,1/2)$ and $n,t\geq 1$. Let $F^{(t)}(n,\alpha)$ be the smallest $m$ such that we can $2$-colour the edges of the complete $t$-uniform hypergraph on $n$ vertices such that if $X\subseteq [n]$ with $\lvert X\rvert \geq m$ then there are at least $\alpha \binom{\lvert X\rvert}{t}$ many...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags (combinatorics, ramsey theory, and discrepancy) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 555. Problem 267 - Score 11
- Site: https://www.erdosproblems.com/267
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $F_1=F_2=1$ and $F_{n+1}=F_n+F_{n-1}$ be the Fibonacci sequence. Let $n_1 1$. Must\[\sum_k\frac{1}{F_{n_k}}\]be irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 556. Problem 247 - Score 11
- Site: https://www.erdosproblems.com/247
- Tags: number theory, irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $1\leq a_1<a_2<\cdots$ be a sequence of integers such that\[\limsup \frac{a_n}{n}=\infty.\]Is\[\sum_{n=1}^\infty \frac{1}{2^{a_n}}\]transcendental?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (number theory and irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 557. Problem 892 - Score 10
- Site: https://www.erdosproblems.com/892
- Tags: number theory, primitive sets
- Prize: no; formalized: no; OEIS: none
- Statement: Is there a necessary and sufficient condition for a sequence of integers $b_1<b_2<\cdots$ that ensures there exists a primitive sequence $a_1<a_2<\cdots$ (i.e. no element divides another) with $a_n \ll b_n$ for all $n$? In particular, is this always possible if there are no non-trivial solutions to...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primitive sets) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 558. Problem 68 - Score 10
- Site: https://www.erdosproblems.com/68
- Tags: number theory, irrationality
- Prize: no; formalized: yes; OEIS: A331373
- Statement: Is\[\sum_{n\geq 2}\frac{1}{n!-1}\]irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (number theory and irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 559. Problem 509 - Score 10
- Site: https://www.erdosproblems.com/509
- Tags: analysis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $f(z)\in\mathbb{C}[z]$ be a monic non-constant polynomial. Can the set\[\{ z\in \mathbb{C} : \lvert f(z)\rvert \leq 1\}\]be covered by a set of circles the sum of whose radii is $\leq 2$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 560. Problem 1038 - Score 10
- Site: https://www.erdosproblems.com/1038
- Tags: analysis
- Prize: no; formalized: yes; OEIS: none
- Statement: Determine the infimum and supremum of\[\lvert \{ x\in \mathbb{R} : \lvert f(x)\rvert < 1\}\rvert\]as $f\in \mathbb{R}[x]$ ranges over all non-constant monic polynomials, all of whose roots are real and in the interval $[-1,1]$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 561. Problem 1049 - Score 10
- Site: https://www.erdosproblems.com/1049
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $t>1$ be a rational number. Is\[\sum_{n=1}^\infty\frac{1}{t^n-1}=\sum_{n=1}^\infty \frac{\tau(n)}{t^n}\]irrational, where $\tau(n)$ counts the divisors of $n$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 562. Problem 531 - Score 10
- Site: https://www.erdosproblems.com/531
- Tags: number theory, ramsey theory
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $F(k)$ be the minimal $N$ such that if we two-colour $\{1,\ldots,N\}$ there is a set $A$ of size $k$ such that all subset sums $\sum_{a\in S}a$ (for $\emptyset\neq S\subseteq A$) are monochromatic. Estimate $F(k)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and ramsey theory) have high shared value, but the score reflects that Acorn still needs colorings, cliques, cycles, girth, and extremal graph APIs before grinding can be effective. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 563. Problem 919 - Score 10
- Site: https://www.erdosproblems.com/919
- Tags: graph theory, chromatic number
- Prize: no; formalized: no; OEIS: none
- Statement: Is there a graph $G$ with vertex set $\omega_2^2$ and chromatic number $\aleph_2$ such that every subgraph whose vertices have a lesser type has chromatic number $\leq \aleph_0$? What if instead we ask for $G$ to have chromatic number $\aleph_1$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 564. Problem 1184 - Score 9
- Site: https://www.erdosproblems.com/1184
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $f(n,k)$ count the number of $1\leq i\leq k$ such that $P(n+i)>k$ (where $P(m)$ is the largest prime divisor of $m$). Is it true that, if $\alpha>1$ is such that $n=k^{\alpha+o(1)}$, then\[f(n,k)=(1-\rho(\alpha)+o(1))k,\]where $\rho$ is the Dickman function ?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 565. Problem 461 - Score 9
- Site: https://www.erdosproblems.com/461
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: possible
- Statement: Let $s_t(n)$ be the $t$-smooth component of $n$ - that is, the product of all primes $p$ (with multiplicity) dividing $n$ such that $p<t$. Let $f(n,t)$ count the number of distinct possible values for $s_t(m)$ for $m\in [n+1,n+t]$. Is it true that\[f(n,t)\gg t\](uniformly, for all $t$ and $n$)?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 566. Problem 872 - Score 9
- Site: https://www.erdosproblems.com/872
- Tags: number theory, primitive sets
- Prize: no; formalized: no; OEIS: possible
- Statement: Consider the two-player game in which players alternately choose integers from $\{2,3,\ldots,n\}$ to be included in some set $A$ (the same set for both players) such that no $a\mid b$ for $a\neq b\in A$. The game ends when no legal move is possible. One player wants the game to last as long as...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primitive sets) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 567. Problem 708 - Score 9
- Site: https://www.erdosproblems.com/708
- Tags: number theory
- Prize: $100; formalized: no; OEIS: possible
- Statement: Let $g(n)$ be minimal such that for any $A\subseteq [2,\infty)\cap \mathbb{N}$ with $\lvert A\rvert =n$ and any set $I$ of $\max(A)$ consecutive integers there exists some $B\subseteq I$ with $\lvert B\rvert=g(n)$ such that\[\prod_{a\in A} a \mid \prod_{b\in B}b.\]Is it true that\[g(n) \leq...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 568. Problem 996 - Score 9
- Site: https://www.erdosproblems.com/996
- Tags: analysis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $n_1 0$ such that, if\[\| f-f_n\|_2 \ll \frac{1}{(\log\log\log n)^{C}}\]then\[\lim_{N\to\infty}\frac{1}{N}\sum_{k\leq N}f(\{\alpha n_k\})=\int_0^1 f(x)\mathrm{d}x\]for almost every $\alpha$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 569. Problem 264 - Score 9
- Site: https://www.erdosproblems.com/264
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $a_n$ be a sequence of positive integers such that for every bounded sequence of integers $b_n$ (with $a_n+b_n\neq 0$ and $b_n\neq 0$ for all $n$) the sum\[\sum \frac{1}{a_n+b_n}\]is irrational. Are $a_n=2^n$ or $a_n=n!$ examples of such a sequence?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 570. Problem 263 - Score 8
- Site: https://www.erdosproblems.com/263
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $a_n$ be an increasing sequence of positive integers such that for every sequence of positive integers $b_n$ with $b_n/a_n\to 1$ the sum\[\sum\frac{1}{b_n}\]is irrational. Is $a_n=2^{2^n}$ such a sequence? Must such a sequence satisfy $a_n^{1/n}\to \infty$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 571. Problem 269 - Score 8
- Site: https://www.erdosproblems.com/269
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $P$ be a finite set of primes with $\lvert P\rvert \geq 2$ and let $\{a_1<a_2<\cdots\}=\{ n\in \mathbb{N} : \textrm{if }p\mid n\textrm{ then }p\in P\}$. Is the sum\[\sum_{n=1}^\infty \frac{1}{[a_1,\ldots,a_n]},\]where $[a_1,\ldots,a_n]$ is the lowest common multiple of $a_1,\ldots,a_n$,...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 572. Problem 132 - Score 8
- Site: https://www.erdosproblems.com/132
- Tags: distances
- Prize: $100; formalized: no; OEIS: none
- Statement: Let $A\subset \mathbb{R}^2$ be a set of $n$ points. Must there be two distances which occur at least once but between at most $n$ pairs of points? Must the number of such distances $\to \infty$ as $n\to \infty$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags (distances) are important, but Acorn currently needs more Euclidean distance and finite-configuration infrastructure before these become the best first targets. This is relevant to many high-value Erdos problems, but Acorn still needs substantial Euclidean distance, finite configuration, line/circle, and convexity infrastructure. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 573. Problem 260 - Score 8
- Site: https://www.erdosproblems.com/260
- Tags: irrationality
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $a_1<a_2<\cdots$ be an increasing sequence such that $a_n/n\to \infty$. Is the sum\[\sum_n \frac{a_n}{2^{a_n}}\]irrational?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 574. Problem 119 - Score 8
- Site: https://www.erdosproblems.com/119
- Tags: analysis, polynomials
- Prize: $100; formalized: yes; OEIS: none
- Statement: Let $z_i$ be an infinite sequence of complex numbers such that $\lvert z_i\rvert=1$ for all $i\geq 1$, and for $n\geq 1$ let\[p_n(z)=\prod_{i\leq n} (z-z_i).\]Let $M_n=\max_{\lvert z\rvert=1}\lvert p_n(z)\rvert$. Is it true that $\limsup M_n=\infty$? Is it true that there exists $c>0$ such that for...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($100) is small, so it is only a mild difficulty signal. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 575. Problem 1200 - Score 8
- Site: https://www.erdosproblems.com/1200
- Tags: number theory, primes
- Prize: no; formalized: no; OEIS: possible
- Statement: There exists a constant $C$ such that for all large $x$ there is a collection of primes $p_1<\ldots<p_k<x$ with $\sum\frac{1}{p_i}<C$ together with a system of congruences $a_i\pmod{p_i}$ such that every integer $n<x$ satisfies at least one of these congruences.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags (number theory and primes) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is less attractive as an early target because prime-distribution and progression problems usually need deeper analytic or additive number theory beyond the current baseline. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 576. Problem 513 - Score 7
- Site: https://www.erdosproblems.com/513
- Tags: analysis
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $f=\sum_{n=0}^\infty a_nz^n$ be a transcendental entire function. What is the greatest possible value of\[\liminf_{r\to \infty} \frac{\max_n\lvert a_nr^n\rvert}{\max_{\lvert z\rvert=r}\lvert f(z)\rvert}?\]
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 577. Problem 687 - Score 7
- Site: https://www.erdosproblems.com/687
- Tags: number theory
- Prize: $1000; formalized: no; OEIS: A048670, A058989
- Statement: Let $Y(x)$ be the maximal $y$ such that there exists a choice of congruence classes $a_p$ for all primes $p\leq x$ such that every integer in $[1,y]$ is congruent to at least one of the $a_p\pmod{p}$. Give good estimates for $Y(x)$. In particular, can one prove that $Y(x)=o(x^2)$ or even $Y(x)\ll...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, known-best bounds, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 578. Problem 1068 - Score 7
- Site: https://www.erdosproblems.com/1068
- Tags: graph theory, set theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: Does every graph with chromatic number $\aleph_1$ contain a countable subgraph which is infinitely vertex-connected?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory, set theory, and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 579. Problem 593 - Score 7
- Site: https://www.erdosproblems.com/593
- Tags: set theory, graph theory, hypergraphs, chromatic number
- Prize: $500; formalized: yes; OEIS: none
- Statement: Characterize those finite 3-uniform hypergraphs which appear in every 3-uniform hypergraph of chromatic number $>\aleph_0$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags and statement (set theory, graph theory, hypergraphs, and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 580. Problem 524 - Score 7
- Site: https://www.erdosproblems.com/524
- Tags: analysis, probability, polynomials
- Prize: no; formalized: no; OEIS: none
- Statement: For any $t\in (0,1)$ let $t=\sum_{k=1}^\infty \epsilon_k(t)2^{-k}$ (where $\epsilon_k(t)\in \{0,1\}$). What is the correct order of magnitude (for almost all $t\in(0,1)$) for\[M_n(t)=\max_{x\in [-1,1]}\left\lvert \sum_{k\leq n}(-1)^{\epsilon_k(t)}x^k\right\rvert?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis, probability, and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 581. Problem 521 - Score 7
- Site: https://www.erdosproblems.com/521
- Tags: analysis, polynomials, probability
- Prize: no; formalized: no; OEIS: none
- Statement: Let $(\epsilon_k)_{k\geq 0}$ be independently uniformly chosen at random from $\{-1,1\}$. If $R_n$ counts the number of real roots of $f_n(z)=\sum_{0\leq k\leq n}\epsilon_k z^k$ then is it true that, almost surely,\[\lim_{n\to \infty}\frac{R_n}{\log n}=\frac{2}{\pi}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis, polynomials, and probability) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 582. Problem 62 - Score 6
- Site: https://www.erdosproblems.com/62
- Tags: graph theory
- Prize: no; formalized: no; OEIS: none
- Statement: If $G_1,G_2$ are two graphs with chromatic number $\aleph_1$ then must there exist a graph $G$ whose chromatic number is $4$ (or even $\aleph_0$) which is a subgraph of both $G_1$ and $G_2$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 583. Problem 1133 - Score 6
- Site: https://www.erdosproblems.com/1133
- Tags: analysis, polynomials
- Prize: no; formalized: no; OEIS: none
- Statement: Let $C>0$. There exists $\epsilon>0$ such that if $n$ is sufficiently large the following holds. For any $x_1,\ldots,x_n\in [-1,1]$ there exist $y_1,\ldots,y_n\in [-1,1]$ such that, if $P$ is a polynomial of degree $m C.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 584. Problem 995 - Score 6
- Site: https://www.erdosproblems.com/995
- Tags: analysis, discrepancy
- Prize: no; formalized: no; OEIS: none
- Statement: Let $n_1<n_2<\cdots$ be a lacunary sequence of integers and $f\in L^2([0,1])$. Estimate the growth of, for almost all $\alpha$,\[\sum_{1\leq k\leq N}f(\{ \alpha n_k\}).\]For example, is it true that, for almost all $\alpha$,\[\sum_{1\leq k\leq N}f(\{ \alpha n_k\})=o(N\sqrt{\log\log N})?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and discrepancy) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 585. Problem 1151 - Score 6
- Site: https://www.erdosproblems.com/1151
- Tags: analysis, polynomials
- Prize: no; formalized: no; OEIS: none
- Statement: Given $a_1,\ldots,a_n\in [-1,1]$ let\[\mathcal{L}^nf(x) = \sum_{1\leq i\leq n}f(a_i)\ell_i(x)\]be the unique polynomial of degree $n-1$ which agrees with $f$ on $a_i$ for $1\leq i\leq n$ (that is, the Lagrange interpolation polynomial). Let $a_i$ be the set of Chebyshev nodes . Prove that, for any...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has exact bound/construction language, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 586. Problem 1002 - Score 6
- Site: https://www.erdosproblems.com/1002
- Tags: analysis, diophantine approximation
- Prize: no; formalized: yes; OEIS: none
- Statement: For any $0<\alpha<1$, let\[f(\alpha,n)=\frac{1}{\log n}\sum_{1\leq k\leq n}(\tfrac{1}{2}-\{ \alpha k\}).\]Does $f(\alpha,n)$ have an asymptotic distribution function? In other words, is there a non-decreasing function $g$ such that $g(-\infty)=0$, $g(\infty)=1$, and\[\lim_{n\to \infty}\lvert \{...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and diophantine approximation) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 587. Problem 1131 - Score 6
- Site: https://www.erdosproblems.com/1131
- Tags: analysis, polynomials
- Prize: no; formalized: no; OEIS: none
- Statement: For $x_1,\ldots,x_n\in [-1,1]$ let\[l_k(x)=\frac{\prod_{i\neq k}(x-x_i)}{\prod_{i\neq k}(x_k-x_i)},\]which are such that $l_k(x_k)=1$ and $l_k(x_i)=0$ for $i\neq k$. What is the minimal value of\[I(x_1,\ldots,x_n)=\int_{-1}^1 \sum_k \lvert l_k(x)\rvert^2\mathrm{d}x?\]In particular, is it true...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 588. Problem 973 - Score 5
- Site: https://www.erdosproblems.com/973
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Does there exist a constant $C>1$ such that, for every $n\geq 2$, there exists a sequence $z_i\in \mathbb{C}$ with $z_1=1$ and $\lvert z_i\rvert \geq 1$ for all $1\leq i\leq n$ with\[\max_{2\leq k\leq n+1}\left\lvert \sum_{1\leq i\leq n}z_i^k\right\rvert < C^{-n}?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 589. Problem 1152 - Score 5
- Site: https://www.erdosproblems.com/1152
- Tags: analysis, polynomials
- Prize: no; formalized: no; OEIS: none
- Statement: For $n\geq 1$ fix some sequence of $n$ distinct numbers $x_{1n},\ldots,x_{nn}\in [-1,1]$. Let $\epsilon=\epsilon(n)\to 0$. Does there always exist a continuous function $f:[-1,1]\to \mathbb{R}$ such that if $p_n$ is a sequence of polynomials, with degrees $\deg p_n<(1+\epsilon(n))n$, such that...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 590. Problem 1132 - Score 5
- Site: https://www.erdosproblems.com/1132
- Tags: analysis, polynomials
- Prize: no; formalized: no; OEIS: none
- Statement: For $x_1,\ldots,x_n\in [-1,1]$ let\[l_k(x)=\frac{\prod_{i\neq k}(x-x_i)}{\prod_{i\neq k}(x_k-x_i)},\]which are such that $l_k(x_k)=1$ and $l_k(x_i)=0$ for $i\neq k$. Let $x_1,x_2,\ldots\in [-1,1]$ be an infinite sequence, and let\[L_n(x) = \sum_{1\leq k\leq n}\lvert l_k(x)\rvert,\]where each...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis and polynomials) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 591. Problem 711 - Score 5
- Site: https://www.erdosproblems.com/711
- Tags: number theory
- Prize: INR 1000; formalized: no; OEIS: possible
- Statement: Let $f(n,m)$ be minimal such that in $(m,m+f(n,m))$ there exist distinct integers $a_1,\ldots,a_n$ such that $k\mid a_k$ for all $1\leq k\leq n$. Prove that\[\max_m f(n,m) \leq n^{1+o(1)}\]and that\[\max_m (f(n,m)-f(n,n))\to \infty.\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize (INR 1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 592. Problem 1045 - Score 5
- Site: https://www.erdosproblems.com/1045
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $z_1,\ldots,z_n\in \mathbb{C}$ with $\lvert z_i-z_j\rvert\leq 2$ for all $i,j$, and\[\Delta(z_1,\ldots,z_n)=\prod_{i\neq j}\lvert z_i-z_j\rvert.\]What is the maximum possible value of $\Delta$? Is it maximised by taking the $z_i$ to be the vertices of a regular polygon?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 593. Problem 1117 - Score 5
- Site: https://www.erdosproblems.com/1117
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f(z)$ be an entire function which is not a monomial. Let $\nu(r)$ count the number of $z$ with $\lvert z\rvert=r$ such that $\lvert f(z)\rvert=\max_{\lvert z\rvert=r}\lvert f(z)\rvert$. (This is a finite quantity if $f$ is not a monomial.) Is it possible for\[\limsup \nu(r)=\infty?\]Is it...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 594. Problem 1120 - Score 5
- Site: https://www.erdosproblems.com/1120
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f\in \mathbb{C}[z]$ be a monic polynomial of degree $n$, all of whose roots satisfy $\lvert z\rvert\leq 1$. Let\[E= \{ z : \lvert f(z)\rvert \leq 1\}.\]What is the shortest length of a path in $E$ joining $z=0$ to $\lvert z\rvert =1$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 595. Problem 638 - Score 4
- Site: https://www.erdosproblems.com/638
- Tags: graph theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $S$ be a family of finite graphs such that for every $n$ there is some $G_n\in S$ such that if the edges of $G_n$ are coloured with $n$ colours then there is a monochromatic triangle. Is it true that for every infinite cardinal $\aleph$ there is a graph $G$ of which every finite subgraph is in...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 596. Problem 710 - Score 4
- Site: https://www.erdosproblems.com/710
- Tags: number theory
- Prize: INR 2000; formalized: no; OEIS: A390246
- Statement: Let $f(n)$ be minimal such that in $(n,n+f(n))$ there exist distinct integers $a_1,\ldots,a_n$ such that $k\mid a_k$ for all $1\leq k\leq n$. Obtain an asymptotic formula for $f(n)$.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize (INR 2000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags (number theory) do not clearly match an early high-leverage infrastructure cluster, so the score leans on formalization, prize, and statement shape. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has OEIS links, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 597. Problem 265 - Score 4
- Site: https://www.erdosproblems.com/265
- Tags: irrationality
- Prize: no; formalized: no; OEIS: none
- Statement: Let $1\leq a_1<a_2<\cdots$ be an increasing sequence of integers. How fast can $a_n\to \infty$ grow if\[\sum\frac{1}{a_n}\quad\textrm{and}\quad\sum\frac{1}{a_n-1}\]are both rational?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (irrationality) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 598. Problem 256 - Score 4
- Site: https://www.erdosproblems.com/256
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $n\geq 1$ and $f(n)$ be maximal such that for any integers $1\leq a_1\leq \cdots \leq a_n$ we have\[\max_{\lvert z\rvert=1}\left\lvert \prod_{i}(1-z^{a_i})\right\rvert\geq f(n).\]Estimate $f(n)$ - in particular, is it true that there exists some constant $c>0$ such that\[\log f(n) \gg n^c?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 599. Problem 1040 - Score 4
- Site: https://www.erdosproblems.com/1040
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $F\subseteq \mathbb{C}$ be a closed infinite set, and let $\mu(F)$ be the infimum of\[\lvert \{ z: \lvert f(z)\rvert < 1\}\rvert,\]as $f$ ranges over all polynomials of the shape $\prod (z-z_i)$ with $z_i\in F$. Is $\mu(F)$ determined by the transfinite diameter of $F$? In particular, is...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 600. Problem 1171 - Score 4
- Site: https://www.erdosproblems.com/1171
- Tags: set theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Is it true that, for all finite $k<\omega$,\[\omega_1^2\to (\omega_1\omega, 3,\ldots,3)_{k+1}^2?\]
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 601. Problem 1039 - Score 3
- Site: https://www.erdosproblems.com/1039
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f(z)=\prod_{i=1}^n(z-z_i)\in \mathbb{C}[z]$ with $\lvert z_i\rvert \leq 1$ for all $i$. Let $\rho(f)$ be the radius of the largest disc which is contained in $\{z: \lvert f(z)\rvert< 1\}$. Determine the behaviour of $\rho(f)$. In particular, is it always true that $\rho(f)\gg 1/n$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 602. Problem 261 - Score 3
- Site: https://www.erdosproblems.com/261
- Tags: number theory
- Prize: no; formalized: no; OEIS: none
- Statement: Are there infinitely many $n$ such that there exists some $t\geq 2$ and distinct integers $a_1,\ldots,a_t\geq 1$ such that\[\frac{n}{2^n}=\sum_{1\leq k\leq t}\frac{a_k}{2^{a_k}}?\]Is this true for all $n$? Is there a rational $x$ such that\[x = \sum_{k=1}^\infty \frac{a_k}{2^{a_k}}\]has at least...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (number theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a general library-building target; Acorn would mostly help by recording clean reductions and reusable lemmas. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 603. Problem 1175 - Score 3
- Site: https://www.erdosproblems.com/1175
- Tags: set theory, chromatic number
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $\kappa$ be an uncountable cardinal. Must there exist a cardinal $\lambda$ such that every graph with chromatic number $\lambda$ contains a triangle-free subgraph with chromatic number $\kappa$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and chromatic number) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 604. Problem 596 - Score 3
- Site: https://www.erdosproblems.com/596
- Tags: graph theory, ramsey theory, set theory
- Prize: no; formalized: yes; OEIS: none
- Statement: For which graphs $G_1,G_2$ is it true that {UL} {LI} for every $n\geq 1$ there is a graph $H$ without a $G_1$ but if the edges of $H$ are $n$-coloured then there is a monochromatic copy of $G_2$, and yet{/LI} {LI} for every graph $H$ without a $G_1$ there is an $\aleph_0$-colouring of the edges of...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory, ramsey theory, and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 605. Problem 1170 - Score 3
- Site: https://www.erdosproblems.com/1170
- Tags: set theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Is it consistent that\[\omega_2\to (\alpha)_2^2\]for every $\alpha <\omega_2$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 606. Problem 514 - Score 3
- Site: https://www.erdosproblems.com/514
- Tags: analysis
- Prize: no; formalized: no; OEIS: none
- Statement: Let $f(z)$ be an entire transcendental function. Does there exist a path $L$ so that, for every $n$,\[\lvert f(z)/z^n\rvert \to \infty\]as $z\to \infty$ along $L$? Can the length of this path be estimated in terms of $M(r)=\max_{\lvert z\rvert=r}\lvert f(z)\rvert$? Does there exist a path along...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 607. Problem 602 - Score 2
- Site: https://www.erdosproblems.com/602
- Tags: combinatorics, set theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $(A_i)$ be a family of sets with $\lvert A_i\rvert=\aleph_0$ for all $i$, such that for any $i\neq j$ we have $\lvert A_i\cap A_j\rvert$ finite and $\neq 1$. Is there a $2$-colouring of $\cup A_i$ such that no $A_i$ is monochromatic?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (combinatorics and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 608. Problem 501 - Score 2
- Site: https://www.erdosproblems.com/501
- Tags: combinatorics, set theory
- Prize: no; formalized: yes; OEIS: none
- Statement: For every $x\in\mathbb{R}$ let $A_x\subset \mathbb{R}$ be a bounded set with outer measure $<1$. Must there exist an infinite independent set, that is, some infinite $X\subseteq \mathbb{R}$ such that $x\not\in A_y$ for all $x\neq y\in X$? If the sets $A_x$ are closed and have measure $<1$, then...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (combinatorics and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 609. Problem 111 - Score 2
- Site: https://www.erdosproblems.com/111
- Tags: graph theory, chromatic number, set theory
- Prize: no; formalized: no; OEIS: none
- Statement: If $G$ is a graph let $h_G(n)$ be defined such that any subgraph of $G$ on $n$ vertices can be made bipartite after deleting at most $h_G(n)$ edges. What is the behaviour of $h_G(n)$? Is it true that $h_G(n)/n\to \infty$ for every graph $G$ with chromatic number $\aleph_1$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory, chromatic number, and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 610. Problem 1167 - Score 2
- Site: https://www.erdosproblems.com/1167
- Tags: set theory, probability
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $r\geq 2$ be finite and $\lambda$ be an infinite cardinal. Let $\kappa_\alpha$ be cardinals for all $\alpha<\gamma$. Is it true that\[2^\lambda \to (\kappa_\alpha+1)_{\alpha<\gamma}^{r+1}\]implies\[\lambda \to (\kappa_\alpha)_{\alpha<\gamma}^{r}?\]Here $+$ means cardinal addition, so that...
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and probability) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 611. Problem 1177 - Score 2
- Site: https://www.erdosproblems.com/1177
- Tags: set theory, chromatic number, hypergraphs
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a finite $3$-uniform hypergraph, and let $F_G(\kappa)$ denote the collection of $3$-uniform hypergraphs with chromatic number $\kappa$ not containing $G$. If $F_G(\aleph_1)$ is not empty then there exists $X\in F_G(\aleph_1)$ of cardinality at most $2^{2^{\aleph_0}}$. If both...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory, chromatic number, and hypergraphs) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 612. Problem 671 - Score 2
- Site: https://www.erdosproblems.com/671
- Tags: analysis
- Prize: $250; formalized: no; OEIS: none
- Statement: Given $a_{i}^n\in [-1,1]$ for all $1\leq i\leq n<\infty$ we define $p_{i}^n$ as the unique polynomial of degree $n-1$ such that $p_{i}^n(a_{i}^n)=1$ and $p_{i}^n(a_{i'}^n)=0$ if $1\leq i'\leq n$ with $i\neq i'$. We similarly define\[\mathcal{L}^nf(x) = \sum_{1\leq i\leq n}f(a_i^n)p_i^n(x),\]the...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($250) suggests meaningful difficulty and lowers the score slightly. The tags and statement (analysis) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 613. Problem 623 - Score 1
- Site: https://www.erdosproblems.com/623
- Tags: set theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $X$ be a set of cardinality $\aleph_\omega$ and $f$ be a function from the finite subsets of $X$ to $X$ such that $f(A)\not\in A$ for all $A$. Must there exist an infinite $Y\subseteq X$ that is independent - that is, for all finite $B\subset Y$ we have $f(B)\not\in Y$?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 614. Problem 597 - Score 1
- Site: https://www.erdosproblems.com/597
- Tags: graph theory, ramsey theory, set theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $G$ be a graph on at most $\aleph_1$ vertices which contains no $K_4$ and no $K_{\aleph_0,\aleph_0}$ (the complete bipartite graph with $\aleph_0$ vertices in each class). Is it true that\[\omega_1^2 \to (\omega_1\omega, G)^2?\]What about finite $G$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory, ramsey theory, and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 615. Problem 70 - Score 1
- Site: https://www.erdosproblems.com/70
- Tags: graph theory, ramsey theory, set theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $\mathfrak{c}$ be the ordinal of the real numbers, $\beta$ be any countable ordinal, and $2\leq n<\omega$. Is it true that $\mathfrak{c}\to (\beta, n)_2^3$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (graph theory, ramsey theory, and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 616. Problem 603 - Score 1
- Site: https://www.erdosproblems.com/603
- Tags: combinatorics, set theory
- Prize: no; formalized: no; OEIS: none
- Statement: Let $(A_i)$ be a family of countably infinite sets such that $\lvert A_i\cap A_j\rvert \neq 2$ for all $i\neq j$. Find the smallest cardinal $C$ such that $\cup A_i$ can always be coloured with at most $C$ colours so that no $A_i$ is monochromatic.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (combinatorics and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 617. Problem 598 - Score 1
- Site: https://www.erdosproblems.com/598
- Tags: set theory, ramsey theory
- Prize: no; formalized: yes; OEIS: none
- Statement: Let $m$ be an infinite cardinal and $\kappa$ be the successor cardinal of $2^{\aleph_0}$. Can one colour the countable subsets of $m$ using $\kappa$ many colours so that every $X\subseteq m$ with $\lvert X\rvert=\kappa$ contains subsets of all possible colours?
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 618. Problem 1173 - Score 1
- Site: https://www.erdosproblems.com/1173
- Tags: set theory, combinatorics
- Prize: no; formalized: no; OEIS: none
- Statement: Assume the generalised continuum hypothesis. Let\[f: \omega_{\omega+1}\to [\omega_{\omega+1}]^{\leq \aleph_\omega}\]be a set mapping such that\[\lvert f(\alpha)\cap f(\beta)\rvert <\aleph_\omega\]for all $\alpha\neq \beta$. Does there exist a free set of cardinality $\aleph_{\omega+1}$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and combinatorics) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This is a poor early Acorn target: the likely bottleneck is deep theory or hard formalization infrastructure rather than a grindable finite lemma chain. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 619. Problem 601 - Score 0
- Site: https://www.erdosproblems.com/601
- Tags: graph theory, set theory
- Prize: $500; formalized: no; OEIS: none
- Statement: For which limit ordinals $\alpha$ is it true that if $G$ is a graph with vertex set $\alpha$ then $G$ must have either an infinite path or independent set on a set of vertices with order type $\alpha$?
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. The recorded prize ($500) suggests meaningful difficulty and lowers the score slightly. The tags and statement (graph theory and set theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This would pay off across many Erdos targets, but first needs a stronger Acorn graph library: colorings, cliques, cycles, girth, Turan numbers, and induced subgraphs. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.

### 620. Problem 592 - Score 0
- Site: https://www.erdosproblems.com/592
- Tags: set theory, ramsey theory
- Prize: $1000; formalized: yes; OEIS: none
- Statement: Determine which countable ordinals $\beta$ have the property that, if $\alpha=\omega^{^\beta}$, then in any red/blue colouring of the edges of $K_\alpha$ there is either a red $K_\alpha$ or a blue $K_3$.
- Assessment: The statement is already marked formalized, which helps because the first layer of definitions has likely been made precise enough for proof assistants or formal proof search. The recorded prize ($1000) is a major negative signal because high-prize Erdos problems tend to be well-known and resistant to standard attacks. The tags and statement (set theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 621. Problem 1168 - Score 0
- Site: https://www.erdosproblems.com/1168
- Tags: set theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Prove that\[\aleph_{\omega+1}\not\to (\aleph_{\omega+1}, 3,\ldots,3)_{\aleph_0}^2\]without assuming the generalised continuum hypothesis.
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. I did not see obvious machine-search hooks in the scraped statement snippet, so the score relies more on the broad mathematical area than on a concrete automated tactic.

### 622. Problem 1172 - Score 0
- Site: https://www.erdosproblems.com/1172
- Tags: set theory, ramsey theory
- Prize: no; formalized: no; OEIS: none
- Statement: Establish whether the following are true assuming the generalised continuum hypothesis:\[\omega_3 \to (\omega_2,\omega_1+2)^2,\]\[\omega_3\to (\omega_2+\omega_1,\omega_2+\omega)^2,\]\[\omega_2\to (\omega_1^{\omega+2}+2, \omega_1+2)^2.\]Establish whether the following is consistent with the...
- Assessment: The statement is not marked formalized, so the first task would be to disambiguate and formalize the statement before proof search becomes useful. No Erdos prize is recorded, so I treat it as less likely to be one of the famous high-resistance benchmark problems. The tags and statement (set theory and ramsey theory) point toward infrastructure-heavy or deep-theory work, so I downgrade it as an early Acorn target. This has good computational-search potential, but large Ramsey-style problems often need substantial graph/hypergraph infrastructure before Acorn can add much reach. The page has finite search hooks, which improves the odds that an AI agent can connect the problem to existing literature or experiments.
