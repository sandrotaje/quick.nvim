vim.g.mapleader               = " "
vim.o.number                  = true
vim.o.relativenumber          = false
vim.o.wrap                    = false
vim.o.expandtab               = true
vim.o.incsearch               = true
vim.o.tabstop                 = 2
vim.o.cursorline              = true
vim.o.ignorecase              = false
vim.o.hlsearch                = false
vim.o.swapfile                = false
vim.o.splitbelow              = true
vim.o.splitright              = true
vim.o.scrolloff               = 22
vim.o.errorbells              = false
vim.o.shiftwidth              = 2
vim.o.numberwidth             = 4
vim.o.termguicolors           = true
vim.o.colorcolumn             = '80'
vim.o.showmode                = false
vim.o.showtabline             = 2
vim.o.signcolumn              = 'yes'
vim.o.mouse                   = 'a'
vim.o.foldlevel               = 99
vim.o.foldlevelstart          = 99
vim.o.foldmethod              = 'indent'
vim.o.clipboard               = 'unnamed'
vim.o.listchars               = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·'
vim.o.list                    = true
vim.g.vim_json_conceal        = 0
vim.g.markdown_syntax_conceal = 0
vim.g.copilot_filetypes       = { yaml = true, yml = true, xml = true, md = true }
vim.g.copilot_no_tab_map      = true
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.VM_maps = { ['Find Under'] = '<C-m>', ['Find Subword Under'] = '<C-m>' }
vim.g.VM_mouse_mappings = 1

vim.api.nvim_set_keymap('v', '<leader>c', 'y/<C-r>"<CR>Ncgn', { noremap = true })

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', 'y', 'ygv<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>l', '<C-W><C-L>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>h', '<C-W><C-H>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>k', '<C-W><C-K>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>j', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '¬', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '˙', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '∑', ':BufferClose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Esc>", "<Esc>:w<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", '<C-n>', ":Neotree toggle reveal float<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '¬', '<Esc>:BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '˙', '<Esc>:BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '∑', '<Esc>:BufferClose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':BufferMovePrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':BufferMoveNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>2', 'vi"', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', 'viw', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':mks!<CR>:qa<CR>', { noremap = true })
-- vim.api.nvim_set_keymap("n", "w", "/([a-z]\u\|[^a-z]\u\|\s\u\|\s[a-z]\|[^a-z][a-z])<CR>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '◊', '/<[A-Z]<CR>l', { noremap = true })
vim.api.nvim_set_keymap('n', '∞', '?<[A-Z]<CR>nl', { noremap = true })
vim.api.nvim_set_keymap('n', '§', '/export function<CR>15ll', { noremap = true })

vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25


-- toggleterm
require('toggleterm').setup {
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<C-t>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell,  -- change the default shell
  float_opts = {
    border = 'single',
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

require('gitsigns').setup {
  current_line_blame = true,
}
