return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function ()
        require("nvim-tree").setup({
            actions = {
                open_file = { quit_on_open = true },
            },
        })
        local api = require("nvim-tree.api")

        vim.keymap.set("n", "<leader>ft", function ()
            api.tree.open({ find_file = true })
        end)
        vim.keymap.set("n", "<leader>fc", api.tree.close_in_this_tab)

        local wk = require("which-key")
        wk.add({
            { "<leader>f", group = "File" },
            { "<leader>t", desc = "File tree" },
            { "<leader>c", desc = "Close file tree" }
        })
    end
}
