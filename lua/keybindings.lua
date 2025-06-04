vim.keymap.set('i', ',<Tab>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Custom keybindings with , as leader key
vim.api.nvim_set_keymap('n', ',g', ':Telescope live_grep<CR>', { noremap = true, silent = false})
vim.api.nvim_set_keymap('n', ',t', ':ToggleTerm direction=float<CR>', { noremap = true, silent = false})
vim.api.nvim_set_keymap('i', ',t', ':ToggleTerm direction=float<CR>', { noremap = true, silent = false})



-- Map \ll to compile LaTeX (using latexmk)
-- vim.api.nvim_set_keymap('n', '<leader>kl', ':VimtexCompile<CR>', { noremap = true, silent = true })

-- Map \lv to view the PDF (open with zathura)
-- vim.api.nvim_set_keymap('n', '<leader>kv', ':VimtexView<CR>', { noremap = true, silent = true })

-- Open session list
vim.api.nvim_set_keymap('n', '<leader>ks', ':SessionSearch<CR>', { noremap = true, silent = true })

-- Reload astro
vim.api.nvim_set_keymap('n', '<leader>kr', ':AstroReload | colorscheme catpuccin<CR>', { noremap = true, silent = true })


