# Full setup — everything, from one marketplace

This installs the **complete** set in **Claude Code** — all from this single marketplace (it references the official plugins for you, so you don't add anything else).

> Prereqs: the `claude` CLI installed + a paid Claude plan (Pro/Max/Team/Enterprise). Review before running. **Product-specific** plugins are commented out — uncomment only what you use. **LSPs**: keep only your languages. Tip: you can also just run `/plugin` and browse/install interactively.

```bash
# Add the marketplace (this one references everything)
claude plugin marketplace add arthuroc21/claude-skills-library

# Curated skills + general-use (safe to take all)
claude plugin install ui-ux-pro-max@claude-skills-library
claude plugin install superpowers@claude-skills-library
claude plugin install frontend-design@claude-skills-library
claude plugin install webapp-testing@claude-skills-library
claude plugin install find-skills@claude-skills-library
claude plugin install code-simplifier@claude-skills-library
claude plugin install code-modernization@claude-skills-library
claude plugin install feature-dev@claude-skills-library
claude plugin install security-guidance@claude-skills-library
claude plugin install claude-md-management@claude-skills-library
claude plugin install claude-code-setup@claude-skills-library
claude plugin install session-report@claude-skills-library
claude plugin install hookify@claude-skills-library
claude plugin install ralph-loop@claude-skills-library
claude plugin install explanatory-output-style@claude-skills-library
claude plugin install playground@claude-skills-library
claude plugin install commit-commands@claude-skills-library
claude plugin install plugin-dev@claude-skills-library
claude plugin install agent-sdk-dev@claude-skills-library
claude plugin install mcp-server-dev@claude-skills-library
claude plugin install mcp-apps@claude-skills-library
claude plugin install serena@claude-skills-library
claude plugin install desktop-commander@claude-skills-library
claude plugin install chrome-devtools-mcp@claude-skills-library
claude plugin install playwright@claude-skills-library
claude plugin install math-olympiad@claude-skills-library
claude plugin install data-engineering@claude-skills-library
claude plugin install project-artifact@claude-skills-library

# Language servers (LSPs) — keep only the languages you code in
claude plugin install typescript-lsp@claude-skills-library
claude plugin install pyright-lsp@claude-skills-library
claude plugin install csharp-lsp@claude-skills-library
claude plugin install jdtls-lsp@claude-skills-library
claude plugin install php-lsp@claude-skills-library
claude plugin install clangd-lsp@claude-skills-library
claude plugin install swift-lsp@claude-skills-library

# Product-specific — UNCOMMENT only what you actually use
# claude plugin install github@claude-skills-library
# claude plugin install figma@claude-skills-library
# claude plugin install canva@claude-skills-library
# claude plugin install notion@claude-skills-library
# claude plugin install monday-crm@claude-skills-library
# claude plugin install firebase@claude-skills-library
# claude plugin install looker@claude-skills-library
# claude plugin install dataverse@claude-skills-library
# claude plugin install datahub-skills@claude-skills-library
# claude plugin install huggingface-skills@claude-skills-library
# claude plugin install liquid-skills@claude-skills-library
# claude plugin install atomic-agents@claude-skills-library
# claude plugin install microsoft-docs@claude-skills-library
# claude plugin install wordpress.com@claude-skills-library
```

Update everything later with `/plugin marketplace update claude-skills-library`.

**Cowork** is separate — these are Claude Code plugins. In Cowork, install via Customize → Plugins/Connectors (only product integrations like Figma/Notion/Canva/Monday exist there).
