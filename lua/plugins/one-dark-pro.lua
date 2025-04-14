return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        options = {
          cursorline = true,
          -- transparency = true,
        },

        highlights = {
          ["@tag.attribute.javascript"] = { fg = "${orange}", italic = true },
          ["@tag.javascript"] = { fg = "${yellow}" },
          ["@tag.builtin.javascript"] = { fg = "${red}" },
          ["@markup.heading.1.javascript"] = { fg = "${white}" },
          ["@markup.heading.2.javascript"] = { fg = "${white}" },
          ["@markup.heading.3.javascript"] = { fg = "${white}" },
          ["@markup.heading.4.javascript"] = { fg = "${white}" },
          ["@markup.heading.5.javascript"] = { fg = "${white}" },
          ["@lsp.typemod.variable.readonly.javascriptreact"] = { fg = "${yellow}" },
          ["@function.method.call.javascript"] = { fg = "${blue}" },
        },
      })
    end,
  },
  {
    -- LazyVim configuration
    "LazyVim/LazyVim",
    opts = {
      -- Set the default color scheme
      colorscheme = "onedark_vivid",
    },
  },
}
