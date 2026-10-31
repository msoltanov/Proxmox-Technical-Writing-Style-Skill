# Install the Proxmox Writing Style Skill

The skill is one folder: [skills/proxmox-writing-style](../skills/proxmox-writing-style). The main file is `SKILL.md`.

Install it as a plugin, upload it as a zip, or copy the folder into the skill directory of the tool.

## Claude Code Plugin

Run these commands in a terminal:

```bash
claude plugin marketplace add msoltanov/Proxmox-Technical-Writing-Style-Skill
```

```bash
claude plugin install proxmox-writing-style@proxmox-writing-style
```

In a Claude Code session, you can also type:

```text
/plugin marketplace add msoltanov/Proxmox-Technical-Writing-Style-Skill
/plugin install proxmox-writing-style@proxmox-writing-style
```

## Claude Code Skill Folder

Claude Code reads skills from `.claude/skills` for a project and from `~/.claude/skills` for a user.

Project install on Linux or macOS:

```bash
mkdir -p .claude/skills && cp -R skills/proxmox-writing-style .claude/skills/
```

User install on Linux or macOS:

```bash
mkdir -p ~/.claude/skills && cp -R skills/proxmox-writing-style ~/.claude/skills/
```

Project install on Windows:

```powershell
New-Item -ItemType Directory -Force .claude/skills
Copy-Item -Recurse skills/proxmox-writing-style .claude/skills/
```

User install on Windows:

```powershell
New-Item -ItemType Directory -Force ~/.claude/skills
Copy-Item -Recurse skills/proxmox-writing-style ~/.claude/skills/
```

To start the skill, type `/proxmox-writing-style`. Claude also loads the skill when the task matches the description.

## Claude Apps (claude.ai and Claude Desktop)

1. Get `proxmox-writing-style.zip` from the release page of this repository. You can also build the zip with `./scripts/package-skill.sh`. The script writes `dist/proxmox-writing-style.zip`.
2. In Claude, open **Settings** > **Capabilities**.
3. In the **Skills** section, upload the zip.
4. Turn on the skill.

## Codex Plugin

Run these commands in a terminal:

```bash
codex plugin marketplace add msoltanov/Proxmox-Technical-Writing-Style-Skill
```

```bash
codex plugin add proxmox-writing-style@proxmox-writing-style
```

## Codex Skill Folder

Codex reads skills from `.agents/skills` for a project and from `~/.agents/skills` for a user.

Project install on Linux or macOS:

```bash
mkdir -p .agents/skills && cp -R skills/proxmox-writing-style .agents/skills/
```

User install on Linux or macOS:

```bash
mkdir -p ~/.agents/skills && cp -R skills/proxmox-writing-style ~/.agents/skills/
```

On Windows, use the PowerShell commands from the Claude Code section. Change `.claude/skills` to `.agents/skills`.

To start the skill, type `$proxmox-writing-style`. Codex also loads the skill when the task matches the description.

## ChatGPT

ChatGPT does not install skill folders from this repository. Use a custom GPT:

1. In ChatGPT, open **GPTs** > **Create** > **Configure**.
2. Copy the text of `SKILL.md` after the second `---` line into **Instructions**.
3. Upload `references/examples.md` as a **Knowledge** file.
4. Save the GPT.

## Cline

Cline reads project rules from `.clinerules/`.

This repository includes `.clinerules/proxmox-writing-style.md`. Copy the file into the `.clinerules/` directory of the target project.

For global rules, copy the file into the Cline global rules directory for your operating system.

## Kilo Code

Kilo Code reads instruction files from `kilo.jsonc` or `.kilo/rules/`.

This repository includes these files:

- `kilo.jsonc`
- `.kilo/rules/proxmox-writing-style.md`

Copy the two files into the target project. Keep the `instructions` entry in `kilo.jsonc`.

## Aider

Aider loads read-only convention files from `.aider.conf.yml`.

This repository includes these files:

- `.aider.conf.yml`
- `CONVENTIONS.md`

Copy the two files into the target project. Aider reads the convention file at startup.

## opencode

opencode reads `AGENTS.md`. It also loads files through `opencode.json`.

This repository includes these files:

- `AGENTS.md`
- `opencode.json`

Copy the two files into the target project. The configuration loads the skill as an instruction file.

## Other Agents

For a tool with custom instructions, add this text:

```text
When you write, edit, or review Proxmox technical documentation, read skills/proxmox-writing-style/SKILL.md and follow it.
```

For a tool that reads repository instructions, commit `AGENTS.md` at the project root.
