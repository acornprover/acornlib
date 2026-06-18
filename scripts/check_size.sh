#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

if repo_root="$(git -C "$script_dir" rev-parse --show-toplevel 2>/dev/null)"; then
    cd "$repo_root"
else
    cd "$script_dir/.."
fi

sum_matching_files() {
    local pattern="$1"

    find . -path './.git' -prune -o -type f -name "$pattern" -printf '%s\n' |
        awk '
            {
                count += 1
                bytes += $1
            }
            END {
                printf "%d %d\n", count, bytes
            }
        '
}

human_bytes() {
    local bytes="$1"

    awk -v bytes="$bytes" '
        BEGIN {
            split("B KiB MiB GiB TiB PiB", units, " ")
            value = bytes + 0
            unit_index = 1

            while (value >= 1024 && unit_index < 6) {
                value /= 1024
                unit_index += 1
            }

            if (unit_index == 1) {
                printf "%d %s", bytes, units[unit_index]
            } else if (value < 10) {
                printf "%.2f %s", value, units[unit_index]
            } else {
                printf "%.1f %s", value, units[unit_index]
            }
        }
    '
}

read -r ac_count ac_bytes < <(sum_matching_files '*.ac')
read -r jsonl_count jsonl_bytes < <(sum_matching_files '*.jsonl')

total_count=$((ac_count + jsonl_count))
total_bytes=$((ac_bytes + jsonl_bytes))

printf 'Acorn source and certificate sizes\n\n'
printf '%-8s %8s %14s %s\n' 'type' 'files' 'bytes' 'human'
printf '%-8s %8d %14d %s\n' '.ac' "$ac_count" "$ac_bytes" "$(human_bytes "$ac_bytes")"
printf '%-8s %8d %14d %s\n' '.jsonl' "$jsonl_count" "$jsonl_bytes" "$(human_bytes "$jsonl_bytes")"
printf '%-8s %8d %14d %s\n' 'total' "$total_count" "$total_bytes" "$(human_bytes "$total_bytes")"
