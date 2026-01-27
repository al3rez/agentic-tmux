# agentic-tmux

Minimal tmux setup for AI agent development with Claude Code and OpenAI Codex.

## Features

- **Agent sidebar** - Shows running agents (🦀 claude, 🤖 codex, 📝 vim/nvim)
- **Pet names** - Random cute names for windows (e.g. "🐼 cozy-panda")
- **Transparent** - Clean, minimal look with no background clutter
- **Toggle sidebar** - `prefix + e` to show/hide agent panel

## Install

```bash
git clone https://github.com/yourusername/agentic-tmux.git
cd agentic-tmux
./install.sh
```

## Keybindings

| Key | Action |
|-----|--------|
| `prefix + e` | Toggle agent sidebar |
| `prefix + r` | Reload config |
| `prefix + \|` | Split vertical |
| `prefix + -` | Split horizontal |
| `M-h/j/k/l` | Navigate panes |

## Requirements

- tmux
- petname (`pip install petname`) - optional, has fallback names
