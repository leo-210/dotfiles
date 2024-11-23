return {
    "folke/which-key.nvim",
    dependencies = {
        {
            'echasnovski/mini.icons',
            version = '*',
            config = function ()
                require('mini.icons').setup()
            end
        },
        'nvim-tree/nvim-web-devicons'
    },
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function ()
        local wk = require("which-key")
        wk.add({ "<leader>g", group = "Git" })
    end
}

