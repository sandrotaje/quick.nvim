local telescope = require("telescope")

telescope.setup {
}

telescope.load_extension("git_worktree")
telescope.load_extension("workspaces")
require("workspaces").setup({
  hooks = {
    open = { "Neotree toggle reveal float" },
  }
})



vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', ":Telescope workspaces<CR>", { noremap = true })
