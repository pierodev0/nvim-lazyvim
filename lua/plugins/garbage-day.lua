return {
  {
    "zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>ux",
        function()
          require("garbage-day.utils").stop_lsp()
        end,
        desc = "Stop all LSP (garbage-day)",
      },
      {
        "<leader>uX",
        function()
          require("garbage-day.utils").start_lsp()
        end,
        desc = "Start LSP for current buffer (garbage-day)",
      },
    },
  },
}
