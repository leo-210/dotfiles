vim.keymap.set(
    "n", "<leader>rm",
    function ()
        vim.cmd("below vsplit")
        vim.cmd("term make")
        vim.cmd("startinsert")
    end,
    { desc = "Make command" }
)
vim.keymap.set(
    "n", "<leader>rt",
    function ()
        vim.cmd("below vsplit")
        vim.cmd("term make test")
        vim.cmd("startinsert")
    end,
    { desc = "Make tests" }
)
