return {
  "projekt0n/github-nvim-theme",
  config = function()
    local palette = require("github-theme.palette").load("github_light")
    local Color = require("github-theme.lib.color")
    require("github-theme").setup({
      groups = {
        all = {
          -- ['@operator.rust'] = {fg = Color.from_hex(palette.primitives.light.scale.red[6])}
        },
      },
    })
  end,
}
