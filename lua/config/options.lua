-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable LazyVim auto formatvim.g.autoformat = false
vim.g.autoformat = false
-- Enable wrap
vim.opt.wrap = true
-- Config for minute-ai
-- vim.g.lazyvim_blink_main = true

vim.opt.breakindent = true
-- Desactivar la signcolumn (símbolos de Git y diagnósticos)
-- vim.opt.signcolumn = "no"

-- Desactivar la numeración de líneas
-- vim.opt.number = false
-- Configurar pwsl por defecto en windows
-- Referencia: https://github.com/LazyVim/LazyVim/issues/2151#issuecomment-1888294994
if jit.os == 'Windows' then
  local win_sh = nil
  if vim.fn.executable("pwsh") then
    win_sh = "pwsh"
  elseif vim.fn.executable("powershell") then
    win_sh = "powershell"
  end
  if win_sh then
    LazyVim.terminal.setup(win_sh)
  end
end

