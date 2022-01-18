vim.g.mapleader = " "
vim.o.number  =true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 22
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

vim.api.nvim_set_keymap('v', 'y', 'ygv<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-H>', ':tabprev<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-W>', ':bd<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', 'vi"', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', 'viw', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':mks!<CR>:qa<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<C-N>', ":NERDTreeToggle<CR> :vertical resize 30<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '◊', '/<[A-Z]<CR>l', { noremap = true })
vim.api.nvim_set_keymap('n', '∞', '?<[A-Z]<CR>nl', { noremap = true })
vim.api.nvim_set_keymap('n', '§', '/export function<CR>15ll', { noremap = true })

vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25
