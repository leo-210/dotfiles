return {
    "lervag/vimtex",
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_syntax_conceal = {
            accents = 1,
            ligatures = 1,
            cites = 1,
            fancy = 1,
            spacing = 1,
            greek = 1,
            math_bounds = 1,
            math_delimiters = 1,
            math_fracs = 1,
            math_super_sub = 1,
            math_symbols = 0,
            sections = 0,
            styles = 1,
        }
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "aux",
            out_dir = "",
            callback = 1,
            continuous = 1,
            executable = "latexmk",
            hooks = {},
            options = {
                "-verbose",
                "-file-line-error",
                "-synctex=1",
                "-interaction=nonstopmode",
            },
        }
        vim.g.vimtex_quickfix_enabled = false
    end,
    config = function ()
        local wk = require("which-key")
        wk.add(
            {
                { "<localleader>l", group = "Latex" },
                { "<localleader>lC", desc = "Clean full" },
                { "<localleader>lG", desc = "Status all" },
                { "<localleader>lI", desc = "Full info" },
                { "<localleader>lK", desc = "Stop all" },
                { "<localleader>lL", desc = "Compile selected" },
                { "<localleader>lT", desc = "Toggle toc" },
                { "<localleader>lX", desc = "Reload state" },
                { "<localleader>la", desc = "Context menu" },
                { "<localleader>lc", desc = "Clean" },
                { "<localleader>le", desc = "Error" },
                { "<localleader>lg", desc = "Status" },
                { "<localleader>li", desc = "Info" },
                { "<localleader>lk", desc = "Stop" },
                { "<localleader>ll", desc = "Compile" },
                { "<localleader>lm", desc = "Imaps list" },
                { "<localleader>lo", desc = "Output" },
                { "<localleader>lq", desc = "Log" },
                { "<localleader>lr", desc = "Reverse search" },
                { "<localleader>ls", desc = "Toggle main" },
                { "<localleader>lt", desc = "Open toc" },
                { "<localleader>lv", desc = "View" },
                { "<localleader>lx", desc = "Reload" },
            }
        )

        wk.add({
            {
                { "c", group = "Change" },
                { "cs$", desc = "Math" },
                { "csc", desc = "Cmd" },
                { "cse", desc = "Env" },
                { "d", group = "Delete" },
                { "ds$", desc = "Math" },
                { "dsc", desc = "Cmd" },
                { "dse", desc = "Env" },
                { "t", group = "Toggle" },
                { "ts$", desc = "Env math" },
                { "tsD", desc = "Delim reverse" },
                { "tsc", desc = "Cmd Star" },
                { "tsd", desc = "Delim" },
                { "tse", desc = "Env Star" },
                { "tsf", desc = "Cmd Frac" },
            }
        })
  end
}
