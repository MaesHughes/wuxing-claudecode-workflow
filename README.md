# Wuxing Workflow

六阶段 AI 辅助开发工作流，为 Claude Code 提供结构化的任务处理能力。

## 工作流介绍

### wuxing-deep（深度工作流）

面向复杂工程的六阶段工作流：**洞察 → 推演 → 切分 → 构建 → 提炼 → 验收**

- 适用于：复杂功能开发、系统重构、架构设计
- 特点：8种 Prompt 框架 + 7种设计模式深度集成

### wuxing-fast（快速工作流）

面向简单独立任务的三阶段工作流：**捕获 → 规划 → 执行**

- 适用于：独立功能、Bug 修复、小需求
- 特点：快速响应，按需简化

## 安装

### 方式一：一键安装（推荐）

```bash
# 使用 curl
curl -fsSL https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.sh | bash

# 或使用 wget
wget -qO- https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.sh | bash
```

### 方式二：手动安装

```bash
# 克隆仓库
git clone https://github.com/MaesHughes/wuxing-claudecode-workflow.git
cd wuxing-claudecode-workflow

# 复制 commands
cp commands/*.md ~/.claude/commands/

# 复制 agents
cp agents/*.md ~/.claude/agents/
```

### 方式三：Windows PowerShell

```powershell
# 下载并运行安装脚本
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.ps1" -OutFile "install.ps1"
.\install.ps1
```

## 使用方法

安装完成后，在 Claude Code 中使用：

```bash
# 深度工作流（复杂任务）
/wuxing-deep 你的任务描述

# 快速工作流（简单任务）
/wuxing-fast 你的任务描述
```

## 目录结构

```
wuxing-claudecode-workflow/
├── commands/
│   ├── wuxing-deep.md      # 深度工作流
│   ├── wuxing-deep-v1.md   # 历史版本
│   ├── wuxing-fast.md      # 快速工作流
│   └── wuxing-fast-v1.md   # 历史版本
├── agents/
│   ├── planner.md          # 任务规划专家
│   └── ui-ux-designer.md   # UI/UX 设计师
├── install.sh              # Linux/macOS 安装脚本
├── install.ps1             # Windows 安装脚本
└── README.md
```

## 依赖的 Agents

wuxing-deep 在处理前端任务时会调用 `ui-ux-designer` agent，确保已安装。

## 框架参考

本项目集成了以下 Prompt 工程框架：

| 框架 | 用途 |
|------|------|
| Q.A.S | 需求分析 |
| B.R.I.D.G.E | 方案推演 |
| S.C.O.P.E | 任务规划 |
| D.E.V.E.L.O.P | 执行迭代 |
| A.R.C.H.I.T.E.C.T | 代码优化 |
| C.O.R.E | 验收评估 |
| T.A.R | 快速任务定义 |
| ReAct | 执行循环 |

## License

MIT
