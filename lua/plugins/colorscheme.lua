return {
  {
    { "Mofiqul/vscode.nvim", lazy = true },
    {
      "dgox16/oldworld.nvim",
    },
    { "catppuccin/nvim", name = "catppuccin"},
    { "rebelot/kanagawa.nvim" },
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
