-- This configuration works exclusively with blink.cmp
-- Source: https://cmp.saghen.dev/configuration/keymap.html 
return {
    "saghen/blink.cmp",
    opts = {
        keymap = {
            -- Tab key behavior:  
            -- ["<Tab>"] = {
            --     function(cmp)
            --         if cmp.snippet_active() then
            --             return cmp.accept()
            --         else
            --             return cmp.select_and_accept()
            --         end
            --     end,
            --     "snippet_forward",
            --     "fallback",
            -- },

            ['<Tab>'] = { 'select_next', 'fallback_to_mappings' },
            -- Ctrl + K: Select the previous suggestion
            ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
            -- Ctrl + J: Select the next suggestion
            ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
        },
    },
}
