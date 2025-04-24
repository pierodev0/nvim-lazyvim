-- This configuration works exclusively with blink.cmp
-- Source: https://cmp.saghen.dev/configuration/keymap.html
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Tab>"] = { "select_next", "fallback_to_mappings" },
      -- Ctrl + K: Select the previous suggestion
      ["<C-k>"] = { "select_prev", "fallback_to_mappings" },
      -- Ctrl + J: Select the next suggestion
      ["<C-j>"] = { "select_next", "fallback_to_mappings" },
    },
    completion = {
      list = { selection = { preselect = false, auto_insert = true } },
      menu = {
        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                return kind_icon
              end,
              -- (optional) use highlights from mini.icons
              highlight = function(ctx)
                local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                return hl
              end,
            },
            kind = {
              -- (optional) use highlights from mini.icons
              highlight = function(ctx)
                local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                return hl
              end,
            },
          },
        },
      },
    },
  },
}
