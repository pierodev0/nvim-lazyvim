return {
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
  {
    "tris203/precognition.nvim",
    --event = "VeryLazy",
    opts = {
      startVisible = false,
    },
    config = function()
      Snacks.toggle({
        name = "Toggle precognition",
        get = function()
          return require("precognition").visible
        end,
        set = function(state)
          if state then
            require("precognition").show()
          else
            require("precognition").hide()
          end
          -- require("precognition").toggle();
        end,
      }):map("<leader>uñ")
    end,
  },
}
