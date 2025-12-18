return {
  "mrjones2014/smart-splits.nvim",
  lazy = false, -- No usar lazy loading para mejor integración con Wezterm
  opts = {
    ignored_filetypes = { "NvimTree", "neo-tree" },
    default_amount = 3,
    at_edge = "wrap",
    cursor_follows_swapped_bufs = false,
    move_cursor_same_row = false,
    disable_multiplexer_nav_when_zoomed = true,
  },
  keys = {
    { "<A-h>", "<cmd>lua require('smart-splits').resize_left()<cr>", mode = "n", desc = "Resize left" },
    { "<A-j>", "<cmd>lua require('smart-splits').resize_down()<cr>", mode = "n", desc = "Resize down" },
    { "<A-k>", "<cmd>lua require('smart-splits').resize_up()<cr>", mode = "n", desc = "Resize up" },
    { "<A-l>", "<cmd>lua require('smart-splits').resize_right()<cr>", mode = "n", desc = "Resize right" },
    { "<C-h>", "<cmd>lua require('smart-splits').move_cursor_left()<cr>", mode = "n", desc = "Move cursor left" },
    { "<C-j>", "<cmd>lua require('smart-splits').move_cursor_down()<cr>", mode = "n", desc = "Move cursor down" },
    { "<C-k>", "<cmd>lua require('smart-splits').move_cursor_up()<cr>", mode = "n", desc = "Move cursor up" },
    { "<C-l>", "<cmd>lua require('smart-splits').move_cursor_right()<cr>", mode = "n", desc = "Move cursor right" },
    {
      "<C-\\>",
      "<cmd>lua require('smart-splits').move_cursor_previous()<cr>",
      mode = "n",
      desc = "Move cursor previous",
    },
    {
      "<leader><leader>h",
      "<cmd>lua require('smart-splits').swap_buf_left()<cr>",
      mode = "n",
      desc = "Swap buffer left",
    },
    {
      "<leader><leader>j",
      "<cmd>lua require('smart-splits').swap_buf_down()<cr>",
      mode = "n",
      desc = "Swap buffer down",
    },
    { "<leader><leader>k", "<cmd>lua require('smart-splits').swap_buf_up()<cr>", mode = "n", desc = "Swap buffer up" },
    {
      "<leader><leader>l",
      "<cmd>lua require('smart-splits').swap_buf_right()<cr>",
      mode = "n",
      desc = "Swap buffer right",
    },
  },
}
