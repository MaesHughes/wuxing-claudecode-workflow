#!/bin/bash

# Wuxing Workflow Installer
# 安装 Wuxing 工作流到 Claude Code

set -e

REPO_URL="https://github.com/MaesHughes/wuxing-claudecode-workflow"
CLAUDE_DIR="$HOME/.claude"

echo "🚀 Wuxing Workflow Installer"
echo "============================"

# 检查 .claude 目录
if [ ! -d "$CLAUDE_DIR" ]; then
    echo "📁 创建 .claude 目录..."
    mkdir -p "$CLAUDE_DIR"
fi

# 创建子目录
mkdir -p "$CLAUDE_DIR/commands"
mkdir -p "$CLAUDE_DIR/agents"

# 下载文件
echo "📥 下载 commands..."
curl -fsSL "$REPO_URL/raw/main/commands/wuxing-deep.md" -o "$CLAUDE_DIR/commands/wuxing-deep.md"
curl -fsSL "$REPO_URL/raw/main/commands/wuxing-fast.md" -o "$CLAUDE_DIR/commands/wuxing-fast.md"

echo "📥 下载 agents..."
curl -fsSL "$REPO_URL/raw/main/agents/planner.md" -o "$CLAUDE_DIR/agents/planner.md"
curl -fsSL "$REPO_URL/raw/main/agents/ui-ux-designer.md" -o "$CLAUDE_DIR/agents/ui-ux-designer.md"

echo ""
echo "✅ 安装完成！"
echo ""
echo "使用方法："
echo "  /wuxing-deep <任务描述>  # 深度工作流（复杂任务）"
echo "  /wuxing-fast <任务描述>  # 快速工作流（简单任务）"
echo ""
