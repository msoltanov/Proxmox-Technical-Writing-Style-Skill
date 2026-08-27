# Install the Proxmox Writing Skill

This project ships one file: [skills/proxmox-writing-style/SKILL.md](../skills/proxmox-writing-style/SKILL.md).

Point each tool at this file, or copy it into the tool's own skill or rules directory.

## Claude Code

Claude Code reads Agent Skills from `.claude/skills` for a project or `~/.claude/skills` for a user.

Project install:

```powershell
New-Item -ItemType Directory -Force .claude/skills
Copy-Item -Recurse skills/proxmox-writing-style .claude/skills/
```

User install:

```powershell
New-Item -ItemType Directory -Force ~/.claude/skills
Copy-Item -Recurse skills/proxmox-writing-style ~/.claude/skills/
```

Invoke it directly with `/proxmox-writing-style`, or let Claude load it when the task matches the description.

## Codex

Codex reads Agent Skills from `.agents/skills` for a project and `$HOME/.agents/skills` for a user.

Project install:

```powershell
New-Item -ItemType Directory -Force .agents/skills
Copy-Item -Recurse skills/proxmox-writing-style .agents/skills/
```

User install:

```powershell
New-Item -ItemType Directory -Force ~/.agents/skills
Copy-Item -Recurse skills/proxmox-writing-style ~/.agents/skills/
```

Invoke it directly with `$proxmox-writing-style`, or let Codex load it when the task matches the description.

## Cline

Cline reads project rules from `.clinerules/`.

This repository includes `.clinerules/proxmox-writing-style.md`. Copy it into the target project's `.clinerules/` directory.

For global rules, copy the file into the Cline global rules directory for your operating system.

## Kilo Code

Kilo Code reads instruction files from `kilo.jsonc` or `.kilo/rules/`.

This repository includes both:

- `kilo.jsonc`
- `.kilo/rules/proxmox-writing-style.md`

Copy both files into the target project. Keep the `instructions` entry in `kilo.jsonc`.

## Aider

Aider can load read-only convention files from `.aider.conf.yml`.

This repository includes:

- `.aider.conf.yml`
- `CONVENTIONS.md`

Copy both files into the target project. Aider reads the convention file at startup.

## opencode

opencode reads `AGENTS.md` and can also load files through `opencode.json`.

This repository includes:

- `AGENTS.md`
- `opencode.json`

Copy both files into the target project. The config loads the canonical skill as an instruction file.

## Generic Agents

For any tool with custom instructions, add this text:

```text
When you write, edit, or review Proxmox technical documentation, read skills/proxmox-writing-style/SKILL.md and follow it.
```

For tools that support repository instructions, commit `AGENTS.md` at the project root.
