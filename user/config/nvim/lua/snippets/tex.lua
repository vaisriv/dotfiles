local ls = require("luasnip")
local s = ls.snippet
local ms = ls.multi_snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
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
local conds = require("luasnip.extras.expand_conditions")

return {
	s({
		trig = "//",
		dscr = "Backslash",
		snippetType = "autosnippet",
	}, fmta("\\<>", { i(1) })),
	s({
		trig = "()",
		dscr = "Left and right matching parentheses",
		snippetType = "autosnippet",
	}, fmta("\\left( <> \\right)", { i(1) })),
	s({
		trig = "[]",
		dscr = "Left and right matching brackets",
		snippetType = "autosnippet",
	}, fmta("\\left[ <> \\right]", { i(1) })),
	s({
		trig = "dot",
		dscr = "Overhead dot for Newtonian notation",
		snippetType = "autosnippet",
	}, fmta("\\dot{<>}", { i(1) })),
	s({
		trig = "vec",
		dscr = "Overhead vector arrow",
		snippetType = "autosnippet",
	}, fmta("\\vec{<>}", { i(1) })),
	-- wanted to make subscript and superscript work, but currently are broken
	--[[ s({
		trig = "._",
		dscr = "Subscript",
		snippetType = "autosnippet",
		trigEngine = "pattern",
	}, {
		f(function(snip)
			return snip.captures[1] .. "{"
		end),
		i(1),
		t({ "}" }),
	}),
	s({
		trig = ".^",
		dscr = "Superscript",
		snippetType = "autosnippet",
		trigEngine = "pattern",
	}, fmta("^{<>}", { i(1) })), ]]
	s({
		trig = "qty",
		dscr = "A siunitx quantity with number and unit fields",
	}, fmta("\\qty{<>}{<>}", { i(1), i(2) })),
	s({
		trig = "unit",
		dscr = "A siunitx unit",
	}, fmta("\\unit{<>}", { i(1) })),
	s(
		{
			trig = "hwkProblem",
			dscr = "Homework problem autoformat",
		},
		fmta(
			[[
		\begin{hwkProblem}{<>}{<>}
				
			<>
			
			\solution

			<>

		\end{hwkProblem}
		]],
			{ i(1), i(2), i(3), i(4) }
		)
	),
	s(
		{
			trig = "hwk",
			dscr = "Homework problem autoformat",
		},
		fmta(
			[[
		\begin{hwkProblem}{<>}{<>}
		\end{hwkProblem}
		]],
			{ i(1), i(2) }
		)
	),
	s(
		{
			trig = "listing",
			dscr = "Code block autoformat",
		},
		fmta(
			[[
		\begin{lstlisting}[language=<>]
			<>
		\end{lstlisting}
		]],
			{ i(1), i(2) }
		)
	),

	-- Alternate bindings:
	s({
		trig = "parentheses",
		dscr = "Left and right matching parentheses",
	}, fmta("\\left( <> \\right)", { i(1) })),
	s({
		trig = "paren",
		dscr = "Left and right matching parentheses",
	}, fmta("\\left( <> \\right)", { i(1) })),
	s({
		trig = "brackets",
		dscr = "Left and right matching brackets",
	}, fmta("\\left[ <> \\right]", { i(1) })),
	s({
		trig = "\\dot",
		dscr = "Overhead dot for Newtonian notation",
	}, fmta("\\dot{<>}", { i(1) })),
	s({
		trig = "\\qty",
		dscr = "A siunitx quantity with number and unit fields",
	}, fmta("\\qty{<>}{<>}", { i(1), i(2) })),
	s({
		trig = "\\unit",
		dscr = "A siunitx unit",
	}, fmta("\\unit{<>}", { i(1) })),
}
