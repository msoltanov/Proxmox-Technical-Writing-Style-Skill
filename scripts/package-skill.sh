#!/usr/bin/env bash
# Build dist/proxmox-writing-style.zip for upload to claude.ai.
# The zip holds one folder, proxmox-writing-style/, with SKILL.md at its root.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
out="$root/dist"
zip_file="$out/proxmox-writing-style.zip"

mkdir -p "$out"
rm -f "$zip_file"
cd "$root/skills"
zip -r -X "$zip_file" proxmox-writing-style -x '*.DS_Store'
echo "Wrote $zip_file"
