return {
  "f-person/auto-dark-mode.nvim",
  config = function()
    require("auto-dark-mode").setup({
      update_interval = 1000, -- tiempo en milisegundos para verificar el modo del sistema
      set_dark_mode = function()
        vim.cmd("colorscheme vscode") -- Cambia por tu colorscheme favorito
      end,
      set_light_mode = function()
        vim.cmd("colorscheme github_light") -- Cambia por tu colorscheme favorito
      end,
    })
    require("auto-dark-mode").init()
  end,
}
