return {
    "axelvc/template-string.nvim",
    event = "BufReadPost",
    config = function()
        require('template-string').setup({
            -- filetypes where the plugin is active
            filetypes = { 'html', 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'vue', 'svelte', 'python', 'cs' },
            -- must add brackets to JSX attributes
            jsx_brackets = true,
            -- remove backticks when there are no template strings
            remove_template_string = true,
            restore_quotes = {
                -- quotes used when "remove_template_string" option is enabled
                normal = [[']],
                jsx = [[']],
            },
        })
    end
}