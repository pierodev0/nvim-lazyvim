if true then return {} end
return {
  "rasulomaroff/reactive.nvim",
  config = function()
    require("reactive").setup({
      builtin = {
        cursorline = true,
        cursor = true,
        modemsg = true,
      },
    })
  end,
}
