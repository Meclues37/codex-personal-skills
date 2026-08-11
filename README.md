# Codex Personal Skills

Portable backup of Yisen's personal Codex skills.

## Included skills

- `brainstorm-first`
- `portfolio-tencent-destination`
- `vibe-coding-mature-deps`

OpenAI-managed system skills and plugin-provided skills are intentionally not included. Codex installs and updates those separately.

## Install on another Windows computer

1. Install Codex and Git.
2. Clone this repository.
3. From PowerShell in the cloned repository, run:

   ```powershell
   .\install.ps1
   ```

4. Restart Codex.

The installer copies each folder from `skills` into `$env:CODEX_HOME\skills`. If `CODEX_HOME` is not set, it uses `$HOME\.codex\skills`.

## Machine-specific note

`portfolio-tencent-destination` refers to files under `D:\photography protfolio`. Recreate that project path on the destination computer, or update the paths in its `SKILL.md`.

No credentials or Tencent Cloud secret keys are stored in this repository.

