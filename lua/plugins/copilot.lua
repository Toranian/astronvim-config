return {
  {
    "github/copilot.lua",
    dependencies = {
      { "nvim-lua/plenary.nvim" }, -- Required for various utilities
    },
    opts = {
      -- Configuration options for copilot.lua
      suggestion = {
        enable = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>i",
        },
      },
      panel = {
        enable = true,
        auto_refresh = true,
      },
    },
    -- Optional: See Commands section for default commands if you want to lazy load on them
  },
}

