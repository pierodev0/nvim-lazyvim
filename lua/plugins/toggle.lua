-- En tu configuración de lazy.nvim
return {
  "folke/snacks.nvim",
  opts = {
    toggle = {
      -- Configuración por defecto del toggle
    }
  },
  config = function()
    -- Crear un toggle personalizado para signcolumn y numeración de líneas
    Snacks.toggle({
      id = "ui_elements",
      name = "Elementos UI",
      get = function()
        -- Devuelve true si ambas opciones están activadas
        return vim.opt.signcolumn:get() ~= "no" and vim.opt.number:get()
      end,
      set = function(state)
        if state then
          -- Activar ambas opciones
          vim.opt.signcolumn = "yes"
          vim.opt.number = true
          vim.opt.relativenumber = true
        else
          -- Desactivar ambas opciones
          vim.opt.signcolumn = "no"
          vim.opt.number = false
          vim.opt.relativenumber = false
        end
      end,
    }):map("<leader>ut") -- Asigna el atajo de teclado para el toggle
  end
}

