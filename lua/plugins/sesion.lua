-- if true then return {} end
return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = { options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" } },
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      group = vim.api.nvim_create_augroup("restore_session", { clear = true }),
      nested = true,
      callback = function()
        if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
          require("persistence").load()
        end
      end,
    })
  end,
  keys = {
    {
      "<leader>qx",
      function()
        local cwd = vim.fn.getcwd()
        local session_dir = vim.fn.stdpath("state") .. "/sessions/"

        -- 1) Si la sesión ya fue cargada, Neovim suele saber el archivo exacto
        local ses = vim.v.this_session
        if ses ~= "" and vim.fn.filereadable(ses) == 1 then
          vim.fn.delete(ses)
          require("persistence").stop() -- evita que se re-cree al salir
          vim.notify("Session borrada: " .. ses)
          return
        end

        -- 2) Fallback: buscar en la carpeta de sesiones la que pertenezca a este cwd
        local function pesc(s) -- escape para patrones Lua
          return (s:gsub("([^%w])", "%%%1"))
        end
        local cwd_pat = pesc(cwd)

        for _, f in ipairs(vim.fn.glob(session_dir .. "*", 0, 1)) do
          if vim.fn.filereadable(f) == 1 then
            -- lee pocas líneas para no hacerlo pesado
            local ok, lines = pcall(vim.fn.readfile, f, "", 200)
            if ok then
              for _, line in ipairs(lines) do
                if
                  line:match("^cd%s+" .. cwd_pat)
                  or line:match("^lcd%s+" .. cwd_pat)
                  or line:match("^tcd%s+" .. cwd_pat)
                then
                  vim.fn.delete(f)
                  require("persistence").stop() -- evita que se re-cree al salir
                  vim.notify("Session del proyecto borrada: " .. f)
                  return
                end
              end
            end
          end
        end

        vim.notify("No se encontró sesión para: " .. cwd, vim.log.levels.WARN)
      end,
      desc = "Borrar session del proyecto (cwd)",
    },
  },
}
