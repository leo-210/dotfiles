local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = { globals = {'vim'} },
        },
    },
})

lspconfig.clangd.setup {}
lspconfig.nil_ls.setup {}
