local is_termux = vim.env.PREFIX and vim.env.PREFIX:find("com.termux")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = is_termux and { mason = false } or nil,
    },
  },
}
