-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
	pattern = "oil",
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()

		local function set_oil_keymaps()
			vim.keymap.set("n", "h", function()
				require("oil.actions").parent.callback()
			end, { buffer = bufnr, nowait = true, desc = "Oil: Go to parent directory" })
			vim.keymap.set("n", "l", function()
				require("oil.actions").select.callback()
			end, { buffer = bufnr, nowait = true, desc = "Oil: Select" })

			-- Notification for Oil mode
			-- vim.notify("Oil: File navigation mode (h = parent, l = select)")
		end

		local function set_normal_keymaps()
			vim.keymap.set("n", "h", "h", { buffer = bufnr, nowait = true, desc = "Normal: move cursor left" })
			vim.keymap.set("n", "l", "l", { buffer = bufnr, nowait = true, desc = "Normal: move cursor right" })

			-- Notification for Normal mode
			-- vim.notify("Normal: Text navigation mode (h = left, l = right)")
		end

		local function toggle_keymaps()
			if toggle then
				set_oil_keymaps()
			else
				set_normal_keymaps()
			end
			toggle = not toggle
		end

		-- Set initial keymaps and show notification
		set_oil_keymaps()

		vim.keymap.set("n", "gt", toggle_keymaps, { buffer = bufnr, nowait = true, desc = "Toggle keymaps h/l in oil" })
	end,
})
-- Togle para quitar signcolumn, number y relative number
local toggle_state = false

vim.keymap.set('n', '<leader>ut', function()
  toggle_state = not toggle_state
  if toggle_state then
    vim.opt.signcolumn = "yes"
    vim.opt.number = true
    vim.opt.relativenumber = true
  else
    vim.opt.signcolumn = "no"
    vim.opt.number = false
    vim.opt.relativenumber = false
  end
end, { desc = "Toggle signcolumn, number y relativenumber" })

