# Wuxing Workflow Installer for Windows
# Install Wuxing Workflow to Claude Code

$REPO_URL = "https://github.com/MaesHughes/wuxing-claudecode-workflow"
$CLAUDE_DIR = "$env:USERPROFILE\.claude"

Write-Host "Wuxing Workflow Installer" -ForegroundColor Cyan
Write-Host "============================" -ForegroundColor Cyan

# Check .claude directory
if (-not (Test-Path $CLAUDE_DIR)) {
    Write-Host "Creating .claude directory..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $CLAUDE_DIR -Force | Out-Null
}

# Create subdirectories
$commandsDir = Join-Path $CLAUDE_DIR "commands"
$agentsDir = Join-Path $CLAUDE_DIR "agents"

New-Item -ItemType Directory -Path $commandsDir -Force | Out-Null
New-Item -ItemType Directory -Path $agentsDir -Force | Out-Null

# Download files
Write-Host "Downloading commands..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "$REPO_URL/raw/main/commands/wuxing-deep.md" -OutFile (Join-Path $commandsDir "wuxing-deep.md")
Invoke-WebRequest -Uri "$REPO_URL/raw/main/commands/wuxing-fast.md" -OutFile (Join-Path $commandsDir "wuxing-fast.md")

Write-Host "Downloading agents..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "$REPO_URL/raw/main/agents/planner.md" -OutFile (Join-Path $agentsDir "planner.md")
Invoke-WebRequest -Uri "$REPO_URL/raw/main/agents/ui-ux-designer.md" -OutFile (Join-Path $agentsDir "ui-ux-designer.md")

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Usage:"
Write-Host "  /wuxing-deep <task>  # Deep workflow (complex tasks)"
Write-Host "  /wuxing-fast <task>  # Fast workflow (simple tasks)"
Write-Host ""
