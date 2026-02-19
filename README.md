<p align="center">
  <img src="assets/banner.png" alt="Wuxing Workflow Banner" width="100%">
</p>

<p align="center">
  <a href="README.en.md">
    <b>中文 | English</b>
  </a>
</p>

<p align="center">
  <strong>兼容 Claude Code、Cursor、Windsurf 和其他 AI 驱动的 IDE</strong>
</p>

<h1 align="center">Wuxing Workflow</h1>

<p align="center">
  <i>集成 8 种 Prompt 框架的结构化 AI 开发工作流</i>
</p>

<p align="center">
  <strong>专业六阶段工作流处理复杂任务，三阶段工作流处理简单任务</strong>
</p>

<p align="center">
  <a href="https://github.com/MaesHughes/wuxing-claudecode-workflow">
    <img src="https://img.shields.io/github/stars/MaesHughes/wuxing-claudecode-workflow?style=flat-square" alt="stars">
  </a>
  <a href="https://github.com/MaesHughes/wuxing-claudecode-workflow/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-purple?style=flat-square" alt="license">
  </a>
  <img src="https://img.shields.io/badge/Claude%20Code-Compatible-success?style=flat-square" alt="claude-code">
  <img src="https://img.shields.io/badge/Prompt%20Frameworks-8-blue?style=flat-square" alt="frameworks">
</p>

<p align="center">
  <a href="#-功能特点">功能特点</a> •
  <a href="#-快速开始">快速开始</a> •
  <a href="#-工作流介绍">工作流介绍</a> •
  <a href="#-框架参考">框架参考</a> •
  <a href="#-常见问题">常见问题</a>
</p>

---

## 什么是 Wuxing Workflow？

**Wuxing Workflow** 是一套为 Claude Code 设计的结构化 AI 开发工作流系统。它集成了 8 种专业 Prompt 框架和 7 种设计模式，提供系统化的任务处理能力。

### 为什么选择 Wuxing？

传统 AI 交互缺乏结构：
- ❌ 需求模糊导致方案不完整
- ❌ 缺乏清晰的规划阶段
- ❌ 质量检查是事后补救
- ❌ 难以跟踪进度

**Wuxing 解决了这些问题：**
- ✅ **结构化阶段** - 清晰的阶段转换和门禁检查
- ✅ **专业框架** - 8 种 Prompt 框架适配不同场景
- ✅ **设计模式** - 集成 CoT、ReAct、分治法
- ✅ **内建质量** - 每阶段都有 DRY、KISS、YAGNI、SOLID 检查
- ✅ **双模式** - 深度工作流处理复杂任务，快速工作流处理简单任务

---

## 架构说明

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        Wuxing 工作流系统                                  │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│   ┌───────────────────── Wuxing Deep ─────────────────────┐             │
│   │                                                        │             │
│   │  [洞察] → [推演] → [切分] → [构建] → [提炼] → [验收]   │             │
│   │     │        │        │        │        │        │    │             │
│   │   Q.A.S  B.R.I.D.G.E  S.C.O.P.E  D.E.V.  ARCHITECT  C.O.R.E        │
│   │                                                        │             │
│   └────────────────────────────────────────────────────────┘             │
│                                                                          │
│   ┌─────────────────── Wuxing Fast ───────────────────┐                 │
│   │                                                    │                 │
│   │        [捕获] → [规划] → [执行]                     │                 │
│   │           │        │        │                      │                 │
│   │         T.A.R    C.O.R.E   ReAct                   │                 │
│   │                                                    │                 │
│   └────────────────────────────────────────────────────┘                 │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## ✨ 功能特点

### 🔄 双工作流模式

| 模式 | 阶段 | 适用场景 | 耗时 |
|------|------|----------|------|
| **wuxing-deep** | 6 阶段 | 复杂功能、重构、架构设计 | 全面 |
| **wuxing-fast** | 3 阶段 | 简单任务、Bug 修复、小功能 | 快速 |

### 📚 8 种 Prompt 框架

| 框架 | 阶段 | 用途 |
|------|------|------|
| **Q.A.S** | 洞察 | Question + Answer + Scope 需求分析 |
| **B.R.I.D.G.E** | 推演 | Background + Role + Input + Deliverable + Guide + Example |
| **S.C.O.P.E** | 切分 | Scenario + Context + Objective + Parameters + Examples + Evaluation |
| **D.E.V.E.L.O.P** | 构建 | Define + Explore + Validate + Execute + Loop + Optimize + Produce |
| **A.R.C.H.I.T.E.C.T** | 提炼 | Assess + Refine + Construct + Handle + Integrate + Test + Execute + Calibrate |
| **C.O.R.E** | 验收 | Context + Objective + Requirements + Expectation |
| **T.A.R** | 捕获 (Fast) | Task + Action + Result |
| **ReAct** | 执行 (Fast) | Thought → Act → Observe 循环 |

### 🎯 7 种设计模式

- **直接提问** - 清晰明确的问题
- **角色扮演** - 扮演专家角色
- **思维链 (CoT)** - 逐步推理
- **示例驱动** - 通过示例学习
- **约束条件** - 明确边界
- **ReAct** - 推理 + 行动循环
- **分治法** - 分解复杂任务

---

## 🚀 快速开始

### 前置要求

- 已安装 [Claude Code](https://claude.ai/code)
- 终端访问权限

### 安装

#### 方式一：npx 安装（推荐）

```bash
npx github:MaesHughes/wuxing-claudecode-workflow
```

#### 方式二：脚本安装

**Linux / macOS:**
```bash
curl -fsSL https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.sh | bash
```

**Windows PowerShell:**
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.ps1" -OutFile "install.ps1"
.\install.ps1
```

#### 方式三：手动安装

```bash
# 克隆仓库
git clone https://github.com/MaesHughes/wuxing-claudecode-workflow.git
cd wuxing-claudecode-workflow

# 复制 commands
cp commands/*.md ~/.claude/commands/

# 复制 agents
cp agents/*.md ~/.claude/agents/
```

### 验证安装

```bash
ls ~/.claude/commands/  # 应显示 wuxing-deep.md, wuxing-fast.md
ls ~/.claude/agents/   # 应显示 planner.md, ui-ux-designer.md
```

### 更新

当有新版本发布时，重新运行安装命令即可更新：

```bash
npx github:MaesHughes/wuxing-claudecode-workflow
```

这会覆盖 `~/.claude/commands/` 和 `~/.claude/agents/` 中的旧文件，保留您的其他配置。

> **注意**：如果您手动修改过这些文件，更新前请先备份。

---

## 📖 工作流介绍

### Wuxing Deep（六阶段）

用于复杂工程任务：

```
┌─────────┐    ┌─────────┐    ┌───────────┐    ┌─────────┐    ┌─────────┐    ┌───────────┐
│  洞察   │ ──▶│  推演   │ ──▶│   切分    │ ──▶│  构建   │ ──▶│  提炼   │ ──▶│   验收    │
└─────────┘    └─────────┘    └───────────┘    └─────────┘    └─────────┘    └───────────┘
     │              │               │               │              │              │
   Q.A.S      B.R.I.D.G.E      S.C.O.P.E      D.E.V.E.L.O.P   ARCHITECT      C.O.R.E
     │              │               │               │              │              │
  ≥7分?         已选定?          已批准?          已完成?        已通过?        已通过?
     │              │               │               │              │              │
     ▼              ▼               ▼               ▼              ▼              ▼
  (回退)         (回退)         (回退)         (切分)         (构建)      (提炼/构建)
```

**使用方法：**
```
/wuxing-deep 实现一个支持 WebSocket 的实时聊天系统
```

### Wuxing Fast（三阶段）

用于简单独立任务：

```
┌─────────┐         ┌───────┐         ┌─────────┐
│  捕获   │ ──────▶ │ 规划  │ ──────▶ │  执行   │
└─────────┘         └───────┘         └─────────┘
     │                   │                  │
   T.A.R              C.O.R.E            ReAct
     │                   │                  │
  简单?               已确认?            完成
     │                   │                  │
     └──── (直接执行) ────┘                  ▼
```

**使用方法：**
```
/wuxing-fast 给提交按钮添加加载动画
```

---

## 📁 项目结构

```
wuxing-claudecode-workflow/
├── commands/
│   ├── wuxing-deep.md       # 六阶段深度工作流
│   ├── wuxing-deep-v1.md    # 历史版本
│   ├── wuxing-fast.md       # 三阶段快速工作流
│   └── wuxing-fast-v1.md    # 历史版本
├── agents/
│   ├── planner.md           # 任务规划 Agent
│   └── ui-ux-designer.md    # UI/UX 设计 Agent
├── assets/
│   └── banner.png           # 项目横幅
├── install.sh               # Linux/macOS 安装脚本
├── install.ps1              # Windows 安装脚本
├── README.md                # 中文文档（本文件）
└── README.en.md             # 英文文档
```

---

## 🤝 Agents

### Planner Agent

专业任务分解专家。在 wuxing-deep 的「切分」阶段被调用。

**能力：**
- 基于 WBS 的任务分解
- 依赖关系分析
- 风险识别
- 验收标准定义

### UI/UX Designer Agent

UI/UX 设计专家。处理前端相关任务时被调用。

**能力：**
- ASCII 布局草图
- 设计规范输出
- 组件结构规划

---

## ❓ 常见问题

### Q: 什么时候用 wuxing-deep，什么时候用 wuxing-fast？

| 场景 | 推荐 |
|------|------|
| 新功能开发 | wuxing-deep |
| 架构设计 | wuxing-deep |
| 系统重构 | wuxing-deep |
| Bug 修复 | wuxing-fast |
| 小 UI 调整 | wuxing-fast |
| 快速原型 | wuxing-fast |

### Q: 门禁检查机制是什么？

每个阶段都有门禁检查：
- **洞察**：完整性评分 ≥ 7/10
- **推演**：方案已选定
- **切分**：计划已批准
- **构建**：任务已完成
- **提炼**：质量已通过
- **验收**：需求已满足

如果门禁检查失败，工作流会停留在该阶段。

### Q: 可以自定义工作流吗？

可以！工作流文件是纯 Markdown。你可以：
1. 编辑 `~/.claude/commands/wuxing-deep.md`
2. 修改阶段、框架或模板
3. 更改立即生效

### Q: Prompt 框架如何工作？

每个阶段使用特定框架来结构化 AI 的思维：

```
示例：S.C.O.P.E 在切分阶段的应用

S - Scenario:  开发场景是什么？
C - Context:   技术约束有哪些？
O - Objective: 每个子任务的目标是什么？
P - Parameters: 具体参数要求是什么？
E - Examples:  有参考实现吗？
E - Evaluation: 验收标准是什么？
```

---

## 📚 资源

### 文档
- [Prompt 框架指南](https://github.com/MaesHughes/wuxing-claudecode-workflow/wiki/Frameworks)
- [设计模式参考](https://github.com/MaesHughes/wuxing-claudecode-workflow/wiki/Patterns)

### 社区
- [GitHub Issues](https://github.com/MaesHughes/wuxing-claudecode-workflow/issues) - 报告问题
- [GitHub Discussions](https://github.com/MaesHughes/wuxing-claudecode-workflow/discussions) - 提问讨论

---

## 🤝 贡献

欢迎社区贡献！

1. **Fork** 本仓库
2. **创建** 功能分支（`git checkout -b feature/amazing-feature`）
3. **提交** 更改（`git commit -m 'Add amazing feature'`）
4. **推送** 到分支（`git push origin feature/amazing-feature`）
5. **打开** Pull Request

---

## 📄 许可证

[MIT License](LICENSE) - 详见 [LICENSE](LICENSE) 文件。

---

<div align="center">

**由 Wuxing 团队用 ❤️ 制作**

**⭐ 在 GitHub 上给我们加星 —— 这对我们很有帮助！**

</div>
