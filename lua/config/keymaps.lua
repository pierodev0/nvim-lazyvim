-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }
----EDITOR-----
map("n", "<F7>",      function() Snacks.terminal() end, { desc = "Terminal (Root Dir)" })
map("n", "<leader>tq", ":TermNew layout=below<CR>", opts)
map("n", "<leader>tw", ":TermNew layout=right<CR>", opts)
map("n", "<leader>tf", ":TermNew layout=float<CR>", opts)
map("n", "<leader>tl", ":TermSelect<CR>", opts)

-- vim.keymap.del({"n","t"}, "<C-/>")
-- vim.keymap.del({"n","t"}, "<C-_>")

map("t", "<F7>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("n", "ycc", "yygccp", { remap = true })
----- OIL -----
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers but the current one
vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

-- Redefine Ctrl+s to save with the custom function
vim.api.nvim_set_keymap("n", "<C-s>", ":lua SaveFile()<CR>", { noremap = true, silent = true })

-- Custom save function
function SaveFile()
  -- Check if a buffer with a file is open
  if vim.fn.empty(vim.fn.expand("%:t")) == 1 then
    vim.notify("No file to save", vim.log.levels.WARN)
    return
  end

  local filename = vim.fn.expand("%:t") -- Get only the filename
  local success, err = pcall(function()
    vim.cmd("silent! write") -- Try to save the file without showing the default message
  end)

  if success then
    vim.notify(filename .. " Saved!") -- Show only the custom message if successful
  else
    vim.notify("Error: " .. err, vim.log.levels.ERROR) -- Show the error message if it fails
  end
end
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
