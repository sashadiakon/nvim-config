# Neovim Configuration

A modern, modular Neovim setup using **lazy.nvim** as the plugin manager, optimized for **Go**, **Python**, and **Lua** development.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── options.lua       # Editor settings
│   ├── mappings.lua      # Keybindings
│   ├── plugin_specs.lua  # Plugin definitions
│   ├── config/           # Plugin configurations
│   │   ├── which-key.lua
│   │   ├── blink-cmp.lua
│   │   ├── mason.lua
│   │   ├── nvim-tree.lua
│   │   ├── treesitter.lua
│   │   └── fzf-lua.lua
│   └── lsp/
│       └── servers/
│           └── basedpyright.lua
├── lazy-lock.json        # Plugin lock file
└── stylua.toml           # Lua formatter config
```

## Leader Key

**Leader**: `<Space>`
**Local Leader**: `<Space>`

> **Tip**: Press `<Space>` and wait - **which-key** will show you all available commands!

---

## Keybindings

### Essential Actions

| Combo | Action |
|-------|--------|
| `<Space>w` | Save file |
| `<Space>s` | Toggle file tree |
| `<Esc>` | Clear search highlights |
| `<Ctrl+h>` | Move to left window |
| `<Ctrl+j>` | Move to window below |
| `<Ctrl+k>` | Move to window above |
| `<Ctrl+l>` | Move to right window |
| `<Space>cd` | Change working directory to file's directory |

### File Search (Telescope)

| Combo | Action |
|-------|--------|
| `<Space>sf` | Find files |
| `<Space>sg` | Live grep (search in files) |
| `<Space>s.` | Recent files |
| `<Space><Space>` | Switch buffers |
| `<Space>sh` | Search help |
| `<Space>sk` | Search keymaps |
| `<Space>sw` | Search word under cursor |
| `<Space>sd` | Search diagnostics |
| `<Space>sr` | Resume last search |
| `<Space>ss` | Search Telescope builtins |

### LSP (Code Intelligence)

| Combo | Action |
|-------|--------|
| `grd` | Go to definition |
| `grD` | Go to declaration |
| `grr` | Find references |
| `grn` | Rename symbol |
| `gra` | Code actions (quick fixes) |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `gO` | Document symbols |
| `gW` | Workspace symbols |
| `<Space>q` | Open diagnostics quickfix list |
| `<Space>th` | Toggle inlay hints |

### Completion (blink.cmp)

| Combo | Action |
|-------|--------|
| `<Tab>` | Accept completion |
| `<Shift+Tab>` | Previous item |
| `<Ctrl+n>` | Next item |
| `<Ctrl+CR>` | Accept completion (alternative) |
| `<Ctrl+u>` | Scroll documentation up |
| `<Ctrl+d>` | Scroll documentation down |

### Go Development

| Combo | Action |
|-------|--------|
| `<Space>gsr` | Generate `if err != nil` block |
| `<Space>gsj` | Add JSON struct tags |

---

## Installed Plugins

| Plugin | Purpose |
|--------|---------|
| **which-key.nvim** | Key binding helper/cheatsheet |
| **nvim-treesitter** | Syntax highlighting & text objects |
| **telescope.nvim** | Fuzzy finder for files, buffers, etc. |
| **nvim-tree.lua** | File explorer |
| **blink.cmp** | Completion engine (LSP, buffer, path) |
| **nvim-lspconfig** | LSP client configuration |
| **mason.nvim** | Package manager for LSP/tools |
| **mason-lspconfig.nvim** | Bridge between mason and lspconfig |
| **fidget.nvim** | LSP progress notifications |
| **render-markdown.nvim** | Markdown preview in editor |
| **material.nvim** | Color scheme |
| **mini.icons** | Icon provider |
| **whitespace.nvim** | Show/trim trailing whitespace |
| **gopher.nvim** | Go development utilities |
| **lazydev.nvim** | Lua LSP for Neovim API docs |

---

## Language Support

### Configured LSP Servers

| Language | Server |
|----------|--------|
| Go | `gopls` |
| Python | `basedpyright` |
| Lua | `lua_ls` |

### Treesitter Parsers

Python, Go, C++, Lua, Vim, JSON, TOML, Bash, C, Diff, HTML, Markdown

---

## Editor Settings

| Setting | Value |
|---------|-------|
| Indentation | 2 spaces |
| Line numbers | Relative |
| Persistent undo | Enabled |
| Search | Case-insensitive (smart case) |
| Timeout | 300ms |
| Splits | Open right/below |
| Scroll offset | 10 lines |
| Clipboard | Synced with OS |

---

## Quick Start

1. Open Neovim - plugins will auto-install on first launch
2. Run `:Mason` to manage LSP servers and tools
3. Press `<Space>` to see available commands via which-key
4. Use `<Space>sf` to find files, `<Space>sg` to search content
