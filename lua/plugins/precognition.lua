return {
  -- {
  --   "m4xshen/hardtime.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   opts = {},
  -- },
  {
    "tris203/precognition.nvim",
    dependencies = { "folke/snacks.nvim" }, -- Asegurarse de que snacks.nvim sea una dependencia
    --event = "VeryLazy",
    opts = {
      -- startVisible = false,
    },
    config = function()
      -- Variable para mantener el estado
      local is_visible = false

      -- Si Snacks es una variable global, usamos Snacks.toggle
      -- Si no, deberíamos usar require("snacks.toggle")
      local toggle = Snacks and Snacks.toggle or require("snacks.toggle")

      toggle({
        name = "Toggle precognition",
        get = function()
          return is_visible
        end,
        set = function(state)
          is_visible = state
          if state then
            require("precognition").show()
          else
            require("precognition").hide()
          end
        end,
      }):map("<leader>uñ")
    end,
  },
}
