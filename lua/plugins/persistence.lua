-- if true then return {} end
return {
  {
    "folke/persistence.nvim",
    -- event = "BufReadPre",
    enabled = false,
    opts = {
      -- configuración normal
    }, -- config = function(_, opts)
    --   require("persistence").setup(opts)
    --   -- Hook para tmux-resurrect
    --   vim.api.nvim_create_autocmd("User", {
    --     pattern = "PersistenceSavePre",
    --     callback = function()
    --       vim.cmd("mksession! Session.vim")
    --     end,
    --   })
    -- end,
  },
  -- Lua
 {
  "rmagatti/auto-session",
  lazy = false,
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    log_level = 'error',
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    auto_session_use_git_branch = true,
    auto_session_suppress_dirs = {'~/'},
    pre_save_cmds = {
      "BDelete! nameless",
      "BDelete! hidden", 
      "BDelete glob=yode*",
      "cclose"
    }
  }
}
}
