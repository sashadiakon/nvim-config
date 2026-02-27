# Installation & Dependencies

This config targets **Go, Python, and Lua** development. Below are all the prerequisites needed before launching Neovim for the first time.

---

## Requirements

### Neovim

Version **0.10+** is required.

```bash
# Arch
sudo pacman -S neovim

# Ubuntu / Debian (official PPA for latest stable)
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update && sudo apt install neovim

# macOS
brew install neovim
```

---

### Go

Required for `gopher.nvim` and the `gopls` language server. The plugin runs `GoInstallDeps` at build time, which downloads Go-based tooling.

```bash
# Arch
sudo pacman -S go

# Ubuntu / Debian
sudo apt install golang-go

# macOS
brew install go

# Or download directly from https://go.dev/dl/
```

After installing Go, make sure `$GOPATH/bin` (usually `~/go/bin`) is in your `$PATH`:

```bash
# Add to ~/.bashrc or ~/.zshrc
export PATH="$PATH:$HOME/go/bin"
```

`gopher.nvim` keybindings (only active in `.go` files):

| Key | Action |
|---|---|
| `<Space>gsr` | `GoIfErr` — insert `if err != nil` block |
| `<Space>gsj` | `GoTagAdd json` — add JSON struct tags |

---

### Python

Required for `basedpyright` (Python LSP). Mason installs the language server binary, but Python must be present on the system.

Node.js is also needed by `basedpyright` (Mason downloads it automatically on most systems, but having Node available avoids issues):

```bash
# Arch
sudo pacman -S nodejs npm

# Ubuntu / Debian
sudo apt install nodejs npm

# macOS
brew install node
```

---

### ripgrep

Required by Telescope's `live_grep` (`<Space>fg`).

```bash
# Arch
sudo pacman -S ripgrep

# Ubuntu / Debian
sudo apt install ripgrep

# macOS
brew install ripgrep
```

---

### trash-cli

Used by `nvim-tree` for safe file deletion (moves to trash instead of permanently deleting).

```bash
# Arch
sudo pacman -S trash-cli

# Ubuntu / Debian
sudo apt install trash-cli

# macOS
brew install trash
```

---

### A Nerd Font

The config sets `vim.g.have_nerd_font = true`. Diagnostic signs and icons rely on Nerd Font glyphs. Without one, you will see broken characters.

Download from [nerdfonts.com](https://www.nerdfonts.com/) and set it as your terminal font.

Popular choices: `JetBrainsMono Nerd Font`, `FiraCode Nerd Font`, `Hack Nerd Font`.

---

## Mason-managed tools (auto-installed)

These are installed automatically by Mason on first launch — no manual setup needed:

| Tool | Language | Role |
|---|---|---|
| `gopls` | Go | Language server |
| `basedpyright` | Python | Language server |
| `lua_ls` | Lua | Language server |
| `stylua` | Lua | Formatter |

Mason stores everything in `~/.local/share/nvim/mason/`.

---

## First Launch

1. Install all prerequisites above.
2. Clone or symlink this config to `~/.config/nvim`.
3. Launch `nvim`. `lazy.nvim` will bootstrap itself and install all plugins.
4. Mason will then auto-install all language servers and tools listed above.
5. Restart `nvim` once everything finishes.

You can check Mason status at any time with `:Mason`.

---

## Summary Checklist

- [ ] Neovim 0.10+
- [ ] Git
- [ ] Go (+ `$GOPATH/bin` in `$PATH`)
- [ ] Python 3
- [ ] Node.js (for basedpyright)
- [ ] ripgrep (`rg`)
- [ ] trash-cli / trash
- [ ] Nerd Font set in terminal
