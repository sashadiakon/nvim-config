local o = vim.o
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Sync neovim clipboard and OS clipboard
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

vim.g.have_nerd_font = true

vim.o.relativenumber = true

vim.o.showmode =false

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.inccommand = 'split'
-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

vim.o.confirm = true


