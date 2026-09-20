--leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--line numbers
vim.o.number = true
vim.o.relativenumber = true

--cursor settings
vim.o.cursorline = true

--search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

--tabs
vim.o.wrap = true
vim.o.breakindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

--clipboard
vim.opt.clipboard = "unnamedplus"

--keybindings
vim.keymap.set('i','jk','<esc>',{desc = 'switch to normal mode'})
vim.keymap.set('n','<leader>/','<cmd>noh<cr>',{desc= 'clear words highlighted by search'})
vim.keymap.set('n','<leader>l','o<esc>',{desc= 'insert empty string'})

--mouse
vim.opt.mouse = ""

--diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

