# claude-skills-library — smart installer (Windows PowerShell)
# One command:
#   irm https://raw.githubusercontent.com/arthuroc21/claude-skills-library/main/install.ps1 | iex
# Adds the marketplace, then installs the general-use set, SKIPPING anything you already
# have (no duplicates). Product-specific plugins are listed at the end to add à la carte.

if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
  Write-Host "Claude Code isn't installed. First run:  irm https://claude.ai/install.ps1 | iex" -ForegroundColor Red
  return
}

Write-Host "Adding marketplace arthuroc21/claude-skills-library..." -ForegroundColor Cyan
claude plugin marketplace add arthuroc21/claude-skills-library 2>$null | Out-Null

# Plugins you already have (by name, from any marketplace) -> skip these
$have = @{}
try {
  (claude plugin list --json | ConvertFrom-Json) | ForEach-Object { $have[($_.id -split '@')[0].ToLower()] = $true }
} catch { Write-Host "  (couldn't read installed plugins; will try all)" -ForegroundColor DarkGray }

# General-use set (no external product/account needed)
$core = @(
  'ui-ux-pro-max','superpowers','frontend-design','webapp-testing','find-skills',
  'code-simplifier','code-modernization','feature-dev','security-guidance','claude-md-management',
  'claude-code-setup','session-report','hookify','ralph-loop','explanatory-output-style','playground',
  'commit-commands','plugin-dev','agent-sdk-dev','mcp-server-dev','mcp-apps','serena','desktop-commander',
  'chrome-devtools-mcp','playwright','math-olympiad','data-engineering','project-artifact',
  'typescript-lsp','pyright-lsp','csharp-lsp','jdtls-lsp','php-lsp','clangd-lsp','swift-lsp'
)

$inst = @(); $skip = @(); $fail = @()
foreach ($p in $core) {
  if ($have.ContainsKey($p.ToLower())) { $skip += $p; continue }
  Write-Host "Installing $p..."
  claude plugin install "$p@claude-skills-library" | Out-Null
  if ($LASTEXITCODE -eq 0) { $inst += $p } else { $fail += $p }
}

Write-Host ""
Write-Host ("Done. Installed {0}, already had {1}, failed {2}." -f $inst.Count, $skip.Count, $fail.Count) -ForegroundColor Green
if ($skip.Count) { Write-Host ("Already had (skipped): " + ($skip -join ', ')) -ForegroundColor DarkGray }
if ($fail.Count)  { Write-Host ("Failed: " + ($fail -join ', ')) -ForegroundColor Yellow }
Write-Host ""
Write-Host "Product-specific plugins are NOT auto-installed (they need that product/account). Add the ones you use:" -ForegroundColor Cyan
Write-Host "  github figma canva notion monday-crm firebase looker dataverse datahub-skills huggingface-skills liquid-skills atomic-agents microsoft-docs wordpress.com"
Write-Host "  e.g.  claude plugin install figma@claude-skills-library"
