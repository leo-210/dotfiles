vim.keymap.set(
    "n", "<leader>r",
    function ()
        vim.cmd("below vsplit")
        vim.cmd("term utop -init %")
        vim.cmd("startinsert")
    end,
    { desc = "Open ocaml file in REPL" }
)
