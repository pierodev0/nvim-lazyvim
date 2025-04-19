if true then
  return {}
end
return {
  {
    "milanglacier/minuet-ai.nvim",
    config = function()
      require("minuet").setup({
        -- Your configuration options here
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            -- accept whole completion
            accept = "<A-a>",
            -- accept one line
            accept_line = "<A-A>",
            -- accept n lines (prompts for number)
            -- e.g. "A-z 2 CR" will accept 2 lines
            accept_n_lines = "<A-z>",
            -- Cycle to prev completion item, or manually invoke completion
            prev = "<A-[>",
            -- Cycle to next completion item, or manually invoke completion
            next = "<A-]>",
            dismiss = "<A-e>",
          },
          -- show_on_completion_menu = true,
        },
        provider = "gemini",
        provider_options = {
          gemini = {
            model = "gemini-2.0-flash",
            stream = true,
            api_key = "GEMINI_API_KEY",
            optional = {
              generationConfig = {
                maxOutputTokens = 256,
              },
            },
          },
        },
      })
    end,
  },
  -- { 'nvim-lua/plenary.nvim' },
  -- {
  --   "saghen/blink.cmp",
  --   optional = true,
  --   opts = {
  --     keymap = {
  --       ["<A-y>"] = {
  --         function(cmp)
  --           cmp.show({ providers = { "minuet" } })
  --         end,
  --       },
  --     },
  --     sources = {
  --       -- if you want to use auto-complete
  --       default = { "minuet" },
  --       providers = {
  --         minuet = {
  --           name = "minuet",
  --           module = "minuet.blink",
  --           score_offset = 100,
  --         },
  --       },
  --     },
  --   },
  -- },
}
