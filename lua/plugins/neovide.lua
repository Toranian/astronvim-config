if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "FiraCode Nerd Font Propo Ret:h12",
        -- line spacing
        linespace=2,
      },
      g = { -- configure vim.g variables
        -- configure scaling
        neovide_scale_factor = 1.0,
        -- configure padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
        neovide_opacity= 0.85,
        neovide_scroll_animation_length=0.2,
        neovide_cursor_trail_size=0,
        neovide_cursor_animation_length=0.075
        -- neovide_transparency =0.9,
      },
    },
  },
}

