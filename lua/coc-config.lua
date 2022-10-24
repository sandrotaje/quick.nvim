vim.api.nvim_set_keymap("n", "<leader>a", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<leader>e", ":CocCommand eslint.executeAutofix<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>o", ":CocCommand editor.action.organizeImport<CR>", {})
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gD", ":call CocAction('jumpDefinition', 'tabe')<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", "<Plug>(coc-diagnostic-next)", {silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<Plug>(coc-diagnostic-prev)", {silent = true})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Esc>", "<Esc>:w<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-n>", ":CocCommand explorer --position floating<CR>", {noremap = true})
vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", {noremap = true,  silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : '<Tab>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.cmdheight = 2
vim.cmd[[autocmd CursorHold * silent call CocActionAsync('highlight')]]
