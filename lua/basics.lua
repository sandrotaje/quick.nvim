vim.g.mapleader = " "
vim.o.number  =true
vim.o.relativenumber = false
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
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'indent'
vim.o.clipboard = 'unnamed'
vim.o.listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·'
vim.o.list = true
vim.g.vim_json_conceal = 0
vim.g.markdown_syntax_conceal = 0

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', 'y', 'ygv<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-H>', ':BufferPrevious<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-W>', ':BufferClose<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('i', '<C-L>', '<Esc>:BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-H>', '<Esc>:BufferPrevious<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('i', '<C-W>', '<Esc>:BufferClose<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<leader>b', ':BufferMovePrevious<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<leader>n', ':BufferMoveNext<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', 'vi"', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', 'viw', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':mks!<CR>:qa<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>g", ":G<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '◊', '/<[A-Z]<CR>l', { noremap = true })
vim.api.nvim_set_keymap('n', '∞', '?<[A-Z]<CR>nl', { noremap = true })
vim.api.nvim_set_keymap('n', '§', '/export function<CR>15ll', { noremap = true })

vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25
