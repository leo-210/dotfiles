local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

local function in_mathzone()
  return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

local function copy (args)
    return args[1]
end

ls.add_snippets("tex", {
    s({
        trig = "begin",
        name = "env",
        wordTrig = true,
        snippetType = "autosnippet"
    }, {
        t("\\begin{"),
        i(1, "env"),
        t({
            "}",
            "    ",
        }),
        i(0),
        t({
            "",
            "\\end{",
        }),
        f(copy, 1),
        t("}")
    }, {
        condition = conds_expand.line_begin,
    }),
    s({
        trig = "dm",
        name = "display math",
        snippetType = "autosnippet",
        wordTrig = true,
        hidden = false
    }, {
        t({"\\[", "    "}), i(1), t({"", "\\]"})
    }, {
        condition = function ()
            return not in_mathzone()
        end,
    }),
    s({
        trig = "\\frac",
        name = "frac",
        trigEngine = "pattern",
        snippetType = "autosnippet",
        hidden = true,
    }, {
        t("\\frac{"),
        i(1),
        t("} {"),
        i(2),
        t("} ")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "frac",
        name = "frac",
        trigEngine = "pattern",
        snippetType = "autosnippet",
        hidden = true,
    }, {
        t("\\frac{"),
        i(1),
        t("} {"),
        i(2),
        t("} ")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "//",
        name = "frac",
        snippetType = "autosnippet",
        hidden = true,
    }, {
        t("\\frac{"),
        i(1),
        t("} {"),
        i(2),
        t("} ")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "__",
        name = "subscript",
        snippetType = "autosnippet",
        wordTrig = true,
        hidden = true
    }, {
        t("_{"), i(1), t("} ")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "(%a)(%d)",
        name = "auto subscript",
        snippetType = "autosnippet",
        wordTrig = true,
        trigEngine = "pattern",
        hidden = true,
    }, {
        f(function (_, snip)
            return snip.captures[1] .. "_" .. snip.captures[2]
        end, {})
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "(%a)([_%^])(%d[%a%d])",
        name = "auto super/subscript 2",
        snippetType = "autosnippet",
        wordTrig = true,
        trigEngine = "pattern",
        hidden = true,
    }, {
        f(function (_, snip)
            return snip.captures[1] .. snip.captures[2] .. "{" .. snip.captures[3] .. "} "
        end, {})
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "^^",
        name = "superscript",
        snippetType = "autosnippet",
        wordTrig = true,
        hidden = false
    }, {
        t("^{"), i(1), t("} ")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "([^%/%s%)][^%/%s]*)%/",
        name = "auto frac",
        snippetType = "autosnippet",
        wordTrig = false,
        trigEngine = "pattern",
        hidden = true
    }, {
        f(function (_, snip)
            return "\\frac {" .. snip.captures[1] .. "} {"
        end, {}),
        i(1),
        t("} ")
    }, {
        condition = in_mathzone
    }),

    s({
        trig = "fn",
        name = "function",
        snippetType = "snippet",
        wordTrig = true,
    }, {
        i(1, "f"), t(" : "), i(2, "x"), t(" \\mapsto "), i(3, "x")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "fdef",
        name = "function def",
        snippetType = "snippet",
        wordTrig = true,
    }, {
        i(1, "f"), t(" : "), i(2, "\\mathbb{R}"), t(" \\to "), i(3, "\\mathbb{R}")
    }, {
        condition = in_mathzone,
    }),
    s({
        trig = "tend",
        name = "tend vers",
        snippetType = "snippet",
        wordTrig = true,
    }, {
        condition = in_mathzone,
    }),
})
