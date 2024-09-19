vim.keymap.set('i', ',<Tab>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ',g', ':Telescope live_grep<CR>', { noremap = true, silent = false})






