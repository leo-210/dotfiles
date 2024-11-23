vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- To make the Escape key work in the terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.api.nvim_create_autocmd("Filetype", {
    pattern = {
        "help",
        "qf",
        "lspinfo",
        "checkhealth",
    },
    command = [[
        nnoremap <buffer><silent> q :close<CR>
        set nobuflisted
    ]],
})

vim.keymap.set("n", "<leader>gg", function ()
    vim.cmd("tabnew")
    vim.cmd("term lazygit")
    vim.cmd("startinsert")
end, { desc = "Open LazyGit" })
