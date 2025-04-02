-- Source: https://github.com/LazyVim/LazyVim/discussions/1124#discussioncomment-10237303
return {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          vtsls = {
            settings = {
              typescript = {
                preferences = {
                  includeCompletionsForModuleExports = true,
                  includeCompletionsForImportStatements = true,
                  importModuleSpecifier = "non-relative",
                },
              },
            },
          },
        },
      },
    },
}