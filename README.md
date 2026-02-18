<p align="center">
  <img src="assets/banner.png" alt="Wuxing Workflow Banner" width="100%">
</p>

<p align="center">
  <a href="README.zh-CN.md">
    <b>English | 中文</b>
  </a>
</p>

<p align="center">
  <strong>Compatible with Claude Code, Cursor, Windsurf and AI-powered IDEs</strong>
</p>

<h1 align="center">Wuxing Workflow</h1>

<p align="center">
  <i>Structured AI Development Workflow with 8 Prompt Frameworks</i>
</p>

<p align="center">
  <strong>Professional 6-stage workflow for complex tasks, 3-stage workflow for simple tasks</strong>
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
  <a href="#-features">Features</a> •
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-workflows">Workflows</a> •
  <a href="#-frameworks">Frameworks</a> •
  <a href="#-faq">FAQ</a>
</p>

---

## What is Wuxing Workflow?

**Wuxing Workflow** is a structured AI development workflow system designed for Claude Code. It integrates 8 professional Prompt frameworks and 7 design patterns to provide systematic task processing capabilities.

### Why Wuxing?

Traditional AI interactions lack structure:
- ❌ Vague requirements lead to incomplete solutions
- ❌ No clear planning phase
- ❌ Quality checks are afterthoughts
- ❌ Hard to track progress

**Wuxing solves these problems:**
- ✅ **Structured Stages** - Clear phase transitions with gate checks
- ✅ **Professional Frameworks** - 8 Prompt frameworks for different scenarios
- ✅ **Design Patterns** - CoT, ReAct, Divide & Conquer integrated
- ✅ **Quality Built-in** - DRY, KISS, YAGNI, SOLID checks at every stage
- ✅ **Two Modes** - Deep workflow for complex tasks, Fast workflow for simple ones

---

## Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        Wuxing Workflow System                            │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│   ┌───────────────────── Wuxing Deep ─────────────────────┐             │
│   │                                                        │             │
│   │  [Insight] → [Deduce] → [Partition] → [Build] → [Refine] → [Validate] │
│   │      │          │           │           │          │          │      │
│   │    Q.A.S   B.R.I.D.G.E   S.C.O.P.E   D.E.V.    ARCHITECT   C.O.R.E   │
│   │                                                        │             │
│   └────────────────────────────────────────────────────────┘             │
│                                                                          │
│   ┌─────────────────── Wuxing Fast ───────────────────┐                 │
│   │                                                    │                 │
│   │        [Capture] → [Plan] → [Execute]              │                 │
│   │             │          │          │                │                 │
│   │           T.A.R     C.O.R.E     ReAct              │                 │
│   │                                                    │                 │
│   └────────────────────────────────────────────────────┘                 │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## ✨ Features

### 🔄 Two Workflow Modes

| Mode | Stages | Use Case | Time |
|------|--------|----------|------|
| **wuxing-deep** | 6 stages | Complex features, refactoring, architecture | Comprehensive |
| **wuxing-fast** | 3 stages | Simple tasks, bug fixes, small features | Quick |

### 📚 8 Prompt Frameworks

| Framework | Stage | Purpose |
|-----------|-------|---------|
| **Q.A.S** | Insight | Question + Answer + Scope analysis |
| **B.R.I.D.G.E** | Deduce | Background + Role + Input + Deliverable + Guide + Example |
| **S.C.O.P.E** | Partition | Scenario + Context + Objective + Parameters + Examples + Evaluation |
| **D.E.V.E.L.O.P** | Build | Define + Explore + Validate + Execute + Loop + Optimize + Produce |
| **A.R.C.H.I.T.E.C.T** | Refine | Assess + Refine + Construct + Handle + Integrate + Test + Execute + Calibrate |
| **C.O.R.E** | Validate | Context + Objective + Requirements + Expectation |
| **T.A.R** | Capture (Fast) | Task + Action + Result |
| **ReAct** | Execute (Fast) | Thought → Act → Observe loop |

### 🎯 7 Design Patterns

- **Direct Question** - Clear, explicit questions
- **Role Play** - Act as expert roles
- **Chain of Thought (CoT)** - Step-by-step reasoning
- **Few-Shot** - Example-driven learning
- **Constraints** - Explicit boundaries
- **ReAct** - Reasoning + Acting loop
- **Divide & Conquer** - Break down complex tasks

---

## 🚀 Quick Start

### Prerequisites

- [Claude Code](https://claude.ai/code) installed
- Terminal access

### Installation

#### Method 1: One-line Install (Recommended)

**Linux / macOS:**
```bash
curl -fsSL https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.sh | bash
```

**Windows PowerShell:**
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MaesHughes/wuxing-claudecode-workflow/main/install.ps1" -OutFile "install.ps1"
.\install.ps1
```

#### Method 2: Manual Install

```bash
# Clone repository
git clone https://github.com/MaesHughes/wuxing-claudecode-workflow.git
cd wuxing-claudecode-workflow

# Copy commands
cp commands/*.md ~/.claude/commands/

# Copy agents
cp agents/*.md ~/.claude/agents/
```

### Verify Installation

```bash
ls ~/.claude/commands/  # Should show wuxing-deep.md, wuxing-fast.md
ls ~/.claude/agents/   # Should show planner.md, ui-ux-designer.md
```

---

## 📖 Workflows

### Wuxing Deep (6-Stage)

For complex engineering tasks:

```
┌─────────┐    ┌─────────┐    ┌───────────┐    ┌─────────┐    ┌─────────┐    ┌───────────┐
│ Insight │ ──▶│  Deduce │ ──▶│ Partition │ ──▶│  Build  │ ──▶│  Refine │ ──▶│ Validate  │
└─────────┘    └─────────┘    └───────────┘    └─────────┘    └─────────┘    └───────────┘
     │              │               │               │              │              │
   Q.A.S      B.R.I.D.G.E      S.C.O.P.E      D.E.V.E.L.O.P   ARCHITECT      C.O.R.E
     │              │               │               │              │              │
   ≥7pts?       Selected?        Approved?        Done?         Passed?       Passed?
     │              │               │               │              │              │
     ▼              ▼               ▼               ▼              ▼              ▼
  (back)         (back)         (back)        (partition)     (build)     (refine/build)
```

**Usage:**
```
/wuxing-deep Implement a real-time chat system with WebSocket support
```

### Wuxing Fast (3-Stage)

For simple, independent tasks:

```
┌─────────┐         ┌───────┐         ┌─────────┐
│ Capture │ ──────▶ │ Plan  │ ──────▶ │ Execute │
└─────────┘         └───────┘         └─────────┘
     │                   │                  │
   T.A.R              C.O.R.E            ReAct
     │                   │                  │
  Simple?            Confirmed?          Done
     │                   │                  │
     └──── (direct) ─────┘                  ▼
```

**Usage:**
```
/wuxing-fast Add a loading spinner to the submit button
```

---

## 📁 Project Structure

```
wuxing-claudecode-workflow/
├── commands/
│   ├── wuxing-deep.md       # 6-stage deep workflow
│   ├── wuxing-deep-v1.md    # Historical version
│   ├── wuxing-fast.md       # 3-stage fast workflow
│   └── wuxing-fast-v1.md    # Historical version
├── agents/
│   ├── planner.md           # Task planning agent
│   └── ui-ux-designer.md    # UI/UX design agent
├── assets/
│   └── banner.png           # Project banner
├── install.sh               # Linux/macOS installer
├── install.ps1              # Windows installer
├── README.md                # English documentation
└── README.zh-CN.md          # Chinese documentation
```

---

## 🤝 Agents

### Planner Agent

Professional task decomposition expert. Called during the "Partition" stage of wuxing-deep.

**Capabilities:**
- WBS-based task breakdown
- Dependency analysis
- Risk identification
- Acceptance criteria definition

### UI/UX Designer Agent

UI/UX design specialist. Called for frontend-related tasks.

**Capabilities:**
- ASCII layout sketches
- Design specification output
- Component structure planning

---

## ❓ FAQ

### Q: When should I use wuxing-deep vs wuxing-fast?

| Scenario | Recommended |
|----------|-------------|
| New feature development | wuxing-deep |
| Architecture design | wuxing-deep |
| System refactoring | wuxing-deep |
| Bug fix | wuxing-fast |
| Small UI tweak | wuxing-fast |
| Quick prototype | wuxing-fast |

### Q: What's the gate check mechanism?

Each stage has a gate check:
- **Insight**: Completeness score ≥ 7/10
- **Deduce**: Solution selected
- **Partition**: Plan approved
- **Build**: Task completed
- **Refine**: Quality passed
- **Validate**: Requirements met

If a gate check fails, the workflow stays at that stage.

### Q: Can I customize the workflows?

Yes! The workflow files are plain Markdown. You can:
1. Edit `~/.claude/commands/wuxing-deep.md`
2. Modify stages, frameworks, or templates
3. Changes apply immediately

### Q: How do the Prompt frameworks work?

Each stage uses a specific framework to structure the AI's thinking:

```
Example: S.C.O.P.E in Partition stage

S - Scenario:  What's the development context?
C - Context:   What are the technical constraints?
O - Objective: What's the goal of each subtask?
P - Parameters: What are the specific requirements?
E - Examples:  Are there reference implementations?
E - Evaluation: What are the acceptance criteria?
```

---

## 📚 Resources

### Documentation
- [Prompt Frameworks Guide](https://github.com/MaesHughes/wuxing-claudecode-workflow/wiki/Frameworks)
- [Design Patterns Reference](https://github.com/MaesHughes/wuxing-claudecode-workflow/wiki/Patterns)

### Community
- [GitHub Issues](https://github.com/MaesHughes/wuxing-claudecode-workflow/issues) - Report bugs
- [GitHub Discussions](https://github.com/MaesHughes/wuxing-claudecode-workflow/discussions) - Ask questions

---

## 🤝 Contributing

Contributions are welcome!

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** changes (`git commit -m 'Add amazing feature'`)
4. **Push** to branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

---

## 📄 License

[MIT License](LICENSE) - See [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with ❤️ by Wuxing Team**

**⭐ Star us on GitHub — it helps a lot!**

</div>
