return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.experimental = {
      ghost_text = true,  -- Enable ghost text
    }
    opts.performance = {
      debounce = 10,    -- Faster response time
      throttle = 10,    -- Lower throttle
      fetching_timeout = 50, -- Reduce time to fetch completions
    }
    return opts
  end,
}
