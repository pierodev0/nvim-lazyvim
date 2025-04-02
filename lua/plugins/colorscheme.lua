return {
    -- Lazy
    {
        "AstroNvim/astrotheme",
        lazy = false,
        priority = 1000,
        opts = {
          palette = "astrodark",
        },
      },
      {
        -- LazyVim configuration
        "LazyVim/LazyVim",
        opts = {
          -- Set the default color scheme
          colorscheme = "astrodark",
        },
      },
}
