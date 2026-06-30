# Full setup — everything, in one go

This installs the **complete** set that `arthuroc21` uses, in **Claude Code**. It pulls from three places:
1. **This marketplace** (`claude-skills-library`) — the hand-picked skills not available officially.
2. **Anthropic's official marketplace** (`claude-plugins-official`) — the rest.
3. **Source** — `find-skills` (its repo has no license, so it can't be redistributed).

> Prereqs: the `claude` CLI installed and a paid Claude plan (Pro/Max/Team/Enterprise). Review before running. The **product-specific** plugins are commented out — uncomment only the ones whose product you actually use. LSPs: keep only your languages.

```bash
# 1) Register both marketplaces
claude plugin marketplace add anthropics/claude-plugins-official
claude plugin marketplace add arthuroc21/claude-skills-library

# 2) Curated skills (from this library — not in the official marketplace)
claude plugin install ui-ux-pro-max@claude-skills-library
claude plugin install superpowers@claude-skills-library
claude plugin install frontend-design@claude-skills-library
claude plugin install webapp-testing@claude-skills-library

# 3) Official plugins — general-use (safe to take all)
claude plugin install code-simplifier@claude-plugins-official
claude plugin install code-modernization@claude-plugins-official
claude plugin install feature-dev@claude-plugins-official
claude plugin install security-guidance@claude-plugins-official
claude plugin install claude-md-management@claude-plugins-official
claude plugin install claude-code-setup@claude-plugins-official
claude plugin install session-report@claude-plugins-official
claude plugin install hookify@claude-plugins-official
claude plugin install ralph-loop@claude-plugins-official
claude plugin install explanatory-output-style@claude-plugins-official
claude plugin install playground@claude-plugins-official
claude plugin install commit-commands@claude-plugins-official
claude plugin install plugin-dev@claude-plugins-official
claude plugin install agent-sdk-dev@claude-plugins-official
claude plugin install mcp-server-dev@claude-plugins-official
claude plugin install mcp-apps@claude-plugins-official
claude plugin install serena@claude-plugins-official
claude plugin install desktop-commander@claude-plugins-official
claude plugin install chrome-devtools-mcp@claude-plugins-official
claude plugin install playwright@claude-plugins-official
claude plugin install math-olympiad@claude-plugins-official
claude plugin install data-engineering@claude-plugins-official
claude plugin install project-artifact@claude-plugins-official

# 4) Language servers (LSPs) — keep only the languages you code in
claude plugin install typescript-lsp@claude-plugins-official
claude plugin install pyright-lsp@claude-plugins-official
claude plugin install csharp-lsp@claude-plugins-official
claude plugin install jdtls-lsp@claude-plugins-official
claude plugin install php-lsp@claude-plugins-official
claude plugin install clangd-lsp@claude-plugins-official
claude plugin install swift-lsp@claude-plugins-official

# 5) Product-specific — UNCOMMENT only what you actually use
# claude plugin install github@claude-plugins-official
# claude plugin install figma@claude-plugins-official
# claude plugin install canva@claude-plugins-official
# claude plugin install notion@claude-plugins-official
# claude plugin install monday-crm@claude-plugins-official
# claude plugin install firebase@claude-plugins-official
# claude plugin install looker@claude-plugins-official
# claude plugin install dataverse@claude-plugins-official
# claude plugin install datahub-skills@claude-plugins-official
# claude plugin install huggingface-skills@claude-plugins-official
# claude plugin install liquid-skills@claude-plugins-official
# claude plugin install atomic-agents@claude-plugins-official
# claude plugin install microsoft-docs@claude-plugins-official
# claude plugin install wordpress.com@claude-plugins-official

# 6) find-skills — no license in its source repo, so install from source
npx skills add https://github.com/vercel-labs/skills --skill find-skills
```

**Cowork** is separate — these are Claude Code plugins. In Cowork, install via Customize → Plugins/Connectors (only the product integrations like Figma/Notion/Canva/Monday exist there).
