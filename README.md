# claude-skills-library

A small **Claude Code plugin marketplace** — a curated set of installable skills, so anyone can add it once and install by name (with updates).

## Install (Claude Code)

In a real Claude Code terminal:

```text
/plugin marketplace add arthuroc21/claude-skills-library
/plugin install ui-ux-pro-max@claude-skills-library
/plugin install superpowers@claude-skills-library
/plugin install frontend-design@claude-skills-library
/plugin install webapp-testing@claude-skills-library
```

Pull updates later with `/plugin marketplace update claude-skills-library` (or turn on auto-update in `/plugin` → **Marketplaces**). You need your own paid Claude plan (Pro/Max/Team/Enterprise).

## What's inside

| Plugin | What it does | Source | License | Mode |
|--------|--------------|--------|---------|------|
| `ui-ux-pro-max` | UI/UX design intelligence — styles, palettes, font pairings, charts, UX guidelines across 10+ stacks | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | MIT | referenced |
| `superpowers` | Dev methodology — TDD, systematic debugging, planning, code review, worktrees, brainstorming… | [obra/superpowers](https://github.com/obra/superpowers) | MIT | referenced |
| `frontend-design` | Distinctive, intentional UI/visual design guidance | [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/frontend-design) | Apache-2.0 | bundled |
| `webapp-testing` | Test local web apps with Playwright (verify, debug, screenshots, logs) | [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/webapp-testing) | Apache-2.0 | bundled |

- **referenced** = pulled live from the original repo (you get the author's latest).
- **bundled** = a verbatim copy is included here, with its original `LICENSE` retained.

## Attribution

This marketplace references / redistributes third-party skills under their original licenses:

- `frontend-design`, `webapp-testing` — © Anthropic, **Apache-2.0** (see each folder's `LICENSE.txt`), from <https://github.com/anthropics/skills>
- `ui-ux-pro-max` — © nextlevelbuilder, **MIT**, <https://github.com/nextlevelbuilder/ui-ux-pro-max-skill>
- `superpowers` — © Jesse Vincent, **MIT**, <https://github.com/obra/superpowers>

The marketplace metadata itself (this README, `marketplace.json`, the `plugin.json` wrappers) is MIT — see [`LICENSE`](LICENSE).

## Notes

- `superpowers` (and an official `frontend-design`) are also in Anthropic's **official** marketplace `claude-plugins-official` — you can install those there instead if you prefer the official versions with built-in auto-update.
- `find-skills` (from [vercel-labs/skills](https://github.com/vercel-labs/skills)) is intentionally **not** included — its source repo declares no license, so it can't be redistributed. Install it from source: `npx skills add https://github.com/vercel-labs/skills --skill find-skills`.
- These are **Claude Code** plugins. In **Cowork**, install plugins/connectors via Customize → Plugins/Connectors instead (the `claude plugin` command doesn't exist there).
