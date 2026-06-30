#!/usr/bin/env bash
# claude-skills-library — smart installer (macOS / Linux / WSL)
# One command:
#   curl -fsSL https://raw.githubusercontent.com/arthuroc21/claude-skills-library/main/install.sh | bash
# Adds the marketplace, then installs the general-use set, SKIPPING anything you already
# have (no duplicates). Product-specific plugins are listed at the end to add à la carte.
set -uo pipefail

if ! command -v claude >/dev/null 2>&1; then
  echo "Claude Code isn't installed. First run:  curl -fsSL https://claude.ai/install.sh | bash"
  exit 1
fi

echo "Adding marketplace arthuroc21/claude-skills-library..."
claude plugin marketplace add arthuroc21/claude-skills-library >/dev/null 2>&1 || true

# Plugins you already have (by name, any marketplace) -> skip these
have="$(claude plugin list --json 2>/dev/null | grep -oE '"id":[[:space:]]*"[^@"]+@' | sed -E 's/.*"([^@"]+)@/\1/' | tr '[:upper:]' '[:lower:]' | sort -u)"

core="ui-ux-pro-max superpowers frontend-design webapp-testing find-skills \
code-simplifier code-modernization feature-dev security-guidance claude-md-management \
claude-code-setup session-report hookify ralph-loop explanatory-output-style playground \
commit-commands plugin-dev agent-sdk-dev mcp-server-dev mcp-apps serena desktop-commander \
chrome-devtools-mcp playwright math-olympiad data-engineering project-artifact \
typescript-lsp pyright-lsp csharp-lsp jdtls-lsp php-lsp clangd-lsp swift-lsp"

inst=0; skipc=0; failc=0
for p in $core; do
  if printf '%s\n' "$have" | grep -qx "$(printf '%s' "$p" | tr '[:upper:]' '[:lower:]')"; then
    skipc=$((skipc+1)); continue
  fi
  echo "Installing $p..."
  if claude plugin install "$p@claude-skills-library" >/dev/null 2>&1; then
    inst=$((inst+1))
  else
    failc=$((failc+1)); echo "  failed: $p"
  fi
done

echo ""
echo "Done. Installed $inst, already had $skipc, failed $failc."
echo "Product-specific plugins are NOT auto-installed (they need that product/account). Add the ones you use:"
echo "  github figma canva notion monday-crm firebase looker dataverse datahub-skills huggingface-skills liquid-skills atomic-agents microsoft-docs wordpress.com"
echo "  e.g.  claude plugin install figma@claude-skills-library"
