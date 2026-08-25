local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                -- <leader>jk 退出
                ["<leader>jk"] = actions.close,
            },
        },
    },
})
