return {
  {
    { "Mofiqul/vscode.nvim", lazy = true },
    {
      "dgox16/oldworld.nvim",
      lazy = false,
      priority = 1000,
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {"rebelot/kanagawa.nvim"},
    {
      "AstroNvim/astrotheme",
      lazy = true,
      opts = {
        palette = "astrodark",
      },
    },
    {
      -- LazyVim configuration
      "LazyVim/LazyVim",
      opts = {
        -- Set the default color scheme
        colorscheme = "vscode",
      },
    },
  },
}
