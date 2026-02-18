# Wuxing Workflow Installer for Windows
# 安装 Wuxing 工作流到 Claude Code

$REPO_URL = "https://github.com/MaesHughes/wuxing-claudecode-workflow"
$CLAUDE_DIR = "$env:USERPROFILE\.claude"

Write-Host "🚀 Wuxing Workflow Installer" -ForegroundColor Cyan
Write-Host "============================" -ForegroundColor Cyan

# 检查 .claude 目录
if (-not (Test-Path $CLAUDE_DIR)) {
    Write-Host "📁 创建 .claude 目录..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $CLAUDE_DIR -Force | Out-Null
}

# 创建子目录
$commandsDir = Join-Path $CLAUDE_DIR "commands"
$agentsDir = Join-Path $CLAUDE_DIR "agents"

New-Item -ItemType Directory -Path $commandsDir -Force | Out-Null
New-Item -ItemType Directory -Path $agentsDir -Force | Out-Null

# 下载文件
Write-Host "📥 下载 commands..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "$REPO_URL/raw/main/commands/wuxing-deep.md" -OutFile (Join-Path $commandsDir "wuxing-deep.md")
Invoke-WebRequest -Uri "$REPO_URL/raw/main/commands/wuxing-fast.md" -OutFile (Join-Path $commandsDir "wuxing-fast.md")

Write-Host "📥 下载 agents..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "$REPO_URL/raw/main/agents/planner.md" -OutFile (Join-Path $agentsDir "planner.md")
Invoke-WebRequest -Uri "$REPO_URL/raw/main/agents/ui-ux-designer.md" -OutFile (Join-Path $agentsDir "ui-ux-designer.md")

Write-Host ""
Write-Host "✅ 安装完成！" -ForegroundColor Green
Write-Host ""
Write-Host "使用方法："
Write-Host "  /wuxing-deep <任务描述>  # 深度工作流（复杂任务）"
Write-Host "  /wuxing-fast <任务描述>  # 快速工作流（简单任务）"
Write-Host ""
