# Contributing

Thank you for your help. This project is a small skill, so most changes are small.

## Report a Problem

Open an issue:

https://github.com/msoltanov/Proxmox-Technical-Writing-Style-Skill/issues

Include the text that you gave to the AI tool, the output, and the rule that the output broke.

For a security problem, do not open an issue. Read [SECURITY.md](SECURITY.md).

## Change a Rule

The rules in `skills/proxmox-writing-style/SKILL.md` come from the Proxmox Technical Writing Style Guide:

https://pve.proxmox.com/wiki/Technical_Writing_Style_Guide

1. Find the rule in the guide. Note the revision number from the page history.
2. Write the rule in your own words. Do not copy sentences from the guide.
3. If the guide has a newer revision, update `source_revision`, `source_last_edited`, and `verified_on` in the `SKILL.md` frontmatter.
4. Add or update a before and after example in `skills/proxmox-writing-style/references/examples.md`.
5. If the change adds a new behavior, add a test prompt to `evals/evals.json`.

## Writing Style

Write the project files, such as the README and the guides, in plain English:

- Use short sentences and active voice.
- Use one term for one concept.
- Do not use contractions in project files.

The rewrites in `references/examples.md` follow the Proxmox rules instead. For example, they use contractions.

## Check Your Change

1. Install the skill in your AI tool. Read [docs/install.md](docs/install.md).
2. Run the test prompts from `evals/evals.json` that your change affects.
3. Compare each output with the `expected_output` field.
4. If you changed a manifest, run `claude plugin validate .`.

## Pull Requests

1. Make one change in each pull request.
2. Add a line to `CHANGELOG.md`.
3. Describe what you changed and why.

By contributing, you agree that your contribution uses the MIT License in [LICENSE](LICENSE).
