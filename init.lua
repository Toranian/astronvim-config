-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"
require "keybindings"
require "plugin_mods"
require "aesthetics"
require "custom"

require("notify").setup({
  background_colour = "#000000",
})


vim.o.fileformats = 'unix,dos'


-- Enable vimtex plugin
vim.g.vimtex_enabled = 1

-- Set the PDF viewer (use Zathura, or your preferred viewer)
-- vim.g.vimtex_view_method = '/usr/bin/zen-browser'
vim.g.vimtex_view_method = 'zathura'
-- vim.g.vimtex_view_general_viewer = '/usr/bin/zen-browser'

-- Set the LaTeX compiler (latexmk for automatic compilation)
-- vim.g.vimtex_compiler_method = 'latexmk'

-- Auto compile when saving a file
vim.g.vimtex_compiler_auto = 1

vim.g.vimtex_compiler_latexmk = {
  -- build_dir = "build",
  callback = 1,
  continuous = 1,
  executable = "latexmk",
  options = {
    "-shell-escape",
    -- "-verbose",
    "-file-line-error",
    "-interaction=nonstopmode",
    "-synctex=1",
    "-lualatex",
    "-outdir=build",
  }
}

