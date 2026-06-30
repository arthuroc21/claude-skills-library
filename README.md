# claude-skills-library

A curated **Claude Code plugin marketplace** — the complete set of skills `arthuroc21` uses, installable from one place with updates.

## One command — install everything (smart, skips what you already have)

Run in a terminal. It adds the marketplace and installs the general-use set, **skipping anything you already have** (no duplicates):

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/arthuroc21/claude-skills-library/main/install.ps1 | iex
```
**macOS / Linux / WSL:**
```bash
curl -fsSL https://raw.githubusercontent.com/arthuroc21/claude-skills-library/main/install.sh | bash
```

Requires the `claude` CLI + a paid Claude plan. Product-specific plugins (Figma, Notion, …) aren't auto-installed — the script prints them so you can add the ones you use.

## Or do it manually

```text
/plugin marketplace add arthuroc21/claude-skills-library
/plugin install <name>@claude-skills-library
```
Type `/plugin` to browse/install interactively. Update with `/plugin marketplace update claude-skills-library` (or enable auto-update in `/plugin` → Marketplaces). Needs the `claude` CLI + a paid Claude plan.

> **referenced** = points at the source repo (update pulls the author's latest). **bundled** = copied here with its `LICENSE`. Product-specific plugins (Figma, Notion, Looker, Dataverse…) only matter if you use that product.

## Catalog (49 plugins)

| Plugin | What it does | License | Source |
|--------|--------------|---------|--------|
| `ui-ux-pro-max` | UI/UX design intelligence — styles, palettes, font pairings, cha | MIT | referenced (nextlevelbuilder/ui-ux-pro-max-skill) |
| `superpowers` | Dev methodology — TDD, systematic debugging, planning, code revi | MIT | referenced (obra/superpowers) |
| `frontend-design` | Distinctive, intentional UI/visual design guidance. | Apache-2.0 | bundled (this repo) |
| `webapp-testing` | Test local web apps with Playwright. | Apache-2.0 | bundled (this repo) |
| `code-simplifier` | Agent that simplifies and refines code for clarity, consistency, | — | referenced (anthropics/claude-plugins-official) |
| `code-modernization` | Modernize legacy codebases (COBOL, legacy Java/C++, monolith web | — | referenced (anthropics/claude-plugins-official) |
| `feature-dev` | Comprehensive feature development workflow with specialized agen | — | referenced (anthropics/claude-plugins-official) |
| `security-guidance` | Security review for Claude-generated code. Pattern-based warning | — | referenced (anthropics/claude-plugins-official) |
| `claude-md-management` | Tools to maintain and improve CLAUDE.md files - audit quality, c | — | referenced (anthropics/claude-plugins-official) |
| `claude-code-setup` | Analyze codebases and recommend tailored Claude Code automations | — | referenced (anthropics/claude-plugins-official) |
| `session-report` | Generate an explorable HTML report of Claude Code session usage  | — | referenced (anthropics/claude-plugins-official) |
| `hookify` | Easily create custom hooks to prevent unwanted behaviors by anal | — | referenced (anthropics/claude-plugins-official) |
| `ralph-loop` | Interactive self-referential AI loops for iterative development, | — | referenced (anthropics/claude-plugins-official) |
| `explanatory-output-style` | Adds educational insights about implementation choices and codeb | — | referenced (anthropics/claude-plugins-official) |
| `playground` | Creates interactive HTML playgrounds — self-contained single-fil | — | referenced (anthropics/claude-plugins-official) |
| `commit-commands` | Commands for git commit workflows including commit, push, and PR | — | referenced (anthropics/claude-plugins-official) |
| `plugin-dev` | Comprehensive toolkit for developing Claude Code plugins. Includ | — | referenced (anthropics/claude-plugins-official) |
| `agent-sdk-dev` | Development kit for working with the Claude Agent SDK | — | referenced (anthropics/claude-plugins-official) |
| `mcp-server-dev` | Skills for designing and building MCP servers that work seamless | — | referenced (anthropics/claude-plugins-official) |
| `mcp-apps` | Skills for creating MCP Apps with the MCP Apps SDK | — | referenced (modelcontextprotocol/ext-apps) |
| `serena` | Semantic code analysis MCP server providing intelligent code und | — | referenced (anthropics/claude-plugins-official) |
| `desktop-commander` | MCP server for terminal commands, process management, and file o | — | referenced (wonderwhy-er/DesktopCommanderMCP) |
| `chrome-devtools-mcp` | Control and inspect a live Chrome browser from your coding agent | — | referenced (ChromeDevTools/chrome-devtools-mcp) |
| `playwright` | Browser automation and end-to-end testing MCP server by Microsof | — | referenced (anthropics/claude-plugins-official) |
| `math-olympiad` | Solve competition math (IMO, Putnam, USAMO) with adversarial ver | — | referenced (anthropics/claude-plugins-official) |
| `data-engineering` | Data engineering plugin - warehouse exploration, pipeline author | — | referenced (astronomer/agents) |
| `project-artifact` | Generate and publish a living project status page — overview & s | — | referenced (anthropics/claude-plugins-official) |
| `typescript-lsp` | TypeScript/JavaScript language server for enhanced code intellig | — | referenced (anthropics/claude-plugins-official) |
| `pyright-lsp` | Python language server (Pyright) for type checking and code inte | — | referenced (anthropics/claude-plugins-official) |
| `csharp-lsp` | C# language server for code intelligence | — | referenced (anthropics/claude-plugins-official) |
| `jdtls-lsp` | Java language server (Eclipse JDT.LS) for code intelligence | — | referenced (anthropics/claude-plugins-official) |
| `php-lsp` | PHP language server (Intelephense) for code intelligence | — | referenced (anthropics/claude-plugins-official) |
| `clangd-lsp` | C/C++ language server (clangd) for code intelligence | — | referenced (anthropics/claude-plugins-official) |
| `swift-lsp` | Swift language server (SourceKit-LSP) for code intelligence | — | referenced (anthropics/claude-plugins-official) |
| `github` | Official GitHub MCP server for repository management. Create iss | — | referenced (anthropics/claude-plugins-official) |
| `figma` | Figma design platform integration. Access design files, extract  | — | referenced (figma/mcp-server-guide) |
| `canva` | Create, edit, review, resize, and brand-check Canva designs with | — | referenced (canva-sdks/canva-skills) |
| `notion` | Notion workspace integration. Search pages, create and update do | — | referenced (makenotion/claude-code-notion-plugin) |
| `monday-crm` | Run your monday CRM in plain language. Build a pipeline from scr | — | referenced (mondaycom/mcp) |
| `firebase` | Google Firebase MCP integration. Manage Firestore databases, aut | — | referenced (anthropics/claude-plugins-official) |
| `looker` | Connect to Looker and interact with your data using LookML. | — | referenced (gemini-cli-extensions/looker) |
| `dataverse` | Agent skills for building on, analyzing, and managing Microsoft  | — | referenced (microsoft/Dataverse-skills) |
| `datahub-skills` | DataHub development and interaction toolkit with connector plann | — | referenced (datahub-project/datahub-skills) |
| `huggingface-skills` | Build, train, evaluate, and use open source AI models, datasets, | — | referenced (huggingface/skills) |
| `liquid-skills` | Liquid language fundamentals, CSS/JS/HTML coding standards, and  | — | referenced (Shopify/liquid-skills) |
| `atomic-agents` | Comprehensive development workflow for building AI agents with t | — | referenced (BrainBlend-AI/atomic-agents) |
| `microsoft-docs` | Access official Microsoft documentation, API references, and cod | — | referenced (MicrosoftDocs/mcp) |
| `wordpress.com` | Uses Claude Code to create and edit WordPress sites with WordPre | — | referenced (Automattic/claude-code-wordpress.com) |
| `find-skills` | Meta-skill: discover & install other agent skills. | NONE (no license in source) | referenced (vercel-labs/skills) |

## Licenses & attribution

This is a **curated catalog**: most plugins are **referenced** from their original repos (a list of pointers — not redistribution), each keeping its own license (column above). Two skills are **bundled** (copied) under Apache-2.0 with their `LICENSE` retained:

- **bundled:** `frontend-design`, `webapp-testing` — © Anthropic, Apache-2.0 (see each folder's `LICENSE.txt`), from https://github.com/anthropics/skills
- **referenced — Anthropic official plugins:** via `anthropics/claude-plugins-official`, © their respective authors.
- **referenced — others:** ui-ux-pro-max (© nextlevelbuilder, MIT), superpowers (© Jesse Vincent, MIT), and the rest per their source repos.
- ⚠️ `find-skills` (vercel-labs/skills) has **no license** upstream — only *referenced* here (not copied). Install at your discretion.

Marketplace metadata (README, `marketplace.json`, the bundled `plugin.json` wrappers) is MIT — see [`LICENSE`](LICENSE). One-shot full install: [`FULL-SETUP.md`](FULL-SETUP.md).
