-- LaTeX tools

return {
	{
		"iurimateus/luasnip-latex-snippets.nvim",
		dependencies = {
			"lervag/vimtex",
		},
		-- ft = { "tex", "md" },
		ft = "tex",
		opts = {
			use_treesitter = true,
			allow_on_markdown = true,
		},
		config = function()
			-- vimtex config
			vim.g.vimtex_fold_enabled = false
			vim.g.vimtex_view_method = "zathura"

			-- luasnip-latex-snippets config
			require("luasnip-latex-snippets").setup(opts)
			local ls = require("luasnip")
			local utils = require("luasnip-latex-snippets.util.utils")
			local is_math = utils.with_opts(utils.is_math, true) -- true to use treesitter
			local not_math = utils.with_opts(utils.not_math, true) -- true to use treesitter

			-- GENERAL SNIPPETS
			ls.add_snippets("tex", {
				-- Custom Inline-Math and Display-Math snippets to fit my formatting style
				ls.parser.parse_snippet({ trig = "mk", name = "Math" }, "\\( ${1:${TM_SELECTED_TEXT}} \\)$0"),
				ls.parser.parse_snippet({ trig = "dm", name = "Block Math" }, "\\[\n\t${1:${TM_SELECTED_TEXT}}\n\\]$0"),
			}, {
				type = "autosnippets",
				priority = 1,
				condition = utils.pipe({ not_math }),
				wordTrig = true,
			})

			-- MATH SNIPPETS
			ls.add_snippets("tex", {
				-- Subscript and Superscript
				ls.parser.parse_snippet(
					{ trig = "_", name = "Subscript", wordTrig = false },
					"_{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "^", name = "Superscript", wordTrig = false },
					"^{${1:${TM_SELECTED_TEXT}}}$0"
				),

				-- Auto Parenthesis/Brackets/Braces
				ls.parser.parse_snippet(
					{ trig = "()", name = "Parenthesis" },
					"\\left(${1:${TM_SELECTED_TEXT}}\\right)$0"
				),
				ls.parser.parse_snippet(
					{ trig = "[]", name = "Brackets" },
					"\\left[${1:${TM_SELECTED_TEXT}}\\right]$0"
				),
				ls.parser.parse_snippet(
					{ trig = "\\{}", name = "Braces" },
					"\\left\\{${1:${TM_SELECTED_TEXT}}\\right\\}$0"
				),
			}, {
				type = "autosnippets",
				priority = 1,
				condition = utils.pipe({ is_math }),
				wordTrig = true,
			})

			-- GENERAL BINDINGS
			ls.add_snippets("tex", {
				-- Homework Custom Headers
				ls.parser.parse_snippet(
					{ trig = "hwkProblem", name = "Homework Problem Autoformat" },
					"\\begin{hwkProblem}{${1:${TM_SELECTED_TEXT}}}{$2}\n\n\t$3\n\n\t\\hwkSol\n\n\t$4\n\n\\end{hwkProblem}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "hwkProblem", name = "Homework Problem Environment" },
					"\\begin{hwkProblem}{${1:${TM_SELECTED_TEXT}}}{$2}end{hwkProblem}$0"
				),
				ls.parser.parse_snippet({ trig = "hwkSol", name = "Homework Solution Heading" }, "\\hwkSol\n\n$0"),
				ls.parser.parse_snippet(
					{ trig = "hwkPart", name = "Homework Solution Sub-Part (#) Heading" },
					"\\hwkPart\n\n$0"
				),

				-- Code Listings
				ls.parser.parse_snippet(
					{ trig = "lstlisting", name = "Display Code Listing" },
					"\\begin{lstlisting}[language=$1]\n\t${2:${TM_SELECTED_TEXT}}\n\\end{lstlisting}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "lstinputlisting", name = "Display Code Listing from File" },
					"\\lstinputlisting[language=$1]{${2:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "``", name = "Inline Code Listing", type = "autosnippets" },
					"\\lstinline[language=$1]{${2:${TM_SELECTED_TEXT}}}$0"
				),
			}, {
				type = "snippets",
				priority = 1,
				condition = utils.pipe({ not_math }),
				wordTrig = true,
			})

			-- MATH BINDINGS
			ls.add_snippets("tex", {
				-- Fraction
				ls.parser.parse_snippet(
					{ trig = "frac", name = "Fractions", wordTrig = false },
					"\\frac{${1:${TM_SELECTED_TEXT}}}{$2}$0"
				),

				-- Overheads (vec, dot, etc)
				ls.parser.parse_snippet(
					{ trig = "vec", name = "Vector", dscr = "Overhead vector arrow" },
					"\\vec{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "dot", name = "Newtonian Dot", dscr = "Overhead dot for Newtonian notation" },
					"\\dot{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "hat", name = "Hat", dscr = "Overhead hat symbol" },
					"\\hat{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "uvec", name = "Unit Vector", dscr = "Unit Vector" },
					"\\bm{\\hat{${1:${TM_SELECTED_TEXT}}}}$0"
				),

				-- Text+Bold+Functions in Math Mode
				ls.parser.parse_snippet(
					{ trig = "text", name = "Text in Math", dscr = "Inline text in math mode" },
					"\\text{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "bm", name = "Bold Math", dscr = "Bold math symbols" },
					"\\bm{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "fn", name = "Function Shorthand", dscr = "Functions" },
					"\\func{${1:${TM_SELECTED_TEXT}}}[$2]$0"
				),

				-- SInunitx
				ls.parser.parse_snippet(
					{ trig = "siqty", name = "SIunitx Quantity", dscr = "SIunitx quantity with number and unit fields" },
					"\\qty{${1:${TM_SELECTED_TEXT}}}{$2}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "siunit", name = "SIunitx Unit", dscr = "SIunitx unit" },
					"\\unit{${1:${TM_SELECTED_TEXT}}}$0"
				),

				-- HW Custom Functions
				ls.parser.parse_snippet(
					{ trig = "st", name = "'Such That' Shorthand", dscr = "'Such that'" },
					"\\st $0"
				),
				ls.parser.parse_snippet(
					{ trig = "alg", name = "Algorithm Shorthand", dscr = "Algorithms" },
					"\\alg{${1:${TM_SELECTED_TEXT}}}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "deriv", name = "Derivative Shorthand", dscr = "Derivative" },
					"\\deriv{${1:${TM_SELECTED_TEXT}}}{$2}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "pderiv", name = "Partial Derivative Shorthand", dscr = "Partial Derivative" },
					"\\pderiv{${1:${TM_SELECTED_TEXT}}}{$2}$0"
				),
				ls.parser.parse_snippet(
					{ trig = "E", name = "Expectation Shorthand", dscr = "Expected Value function" },
					"\\E[${1:${TM_SELECTED_TEXT}}]$0"
				),
				ls.parser.parse_snippet(
					{ trig = "Var", name = "Variance Shorthand", dscr = "Variance function" },
					"\\Var[${1:${TM_SELECTED_TEXT}}]$0"
				),
				ls.parser.parse_snippet(
					{ trig = "Cov", name = "Covariance Shorthand", dscr = "Covariance function" },
					"\\Cov[${1:${TM_SELECTED_TEXT}}]$0"
				),
				ls.parser.parse_snippet(
					{ trig = "Bias", name = "Bias Shorthand", dscr = "Bias function" },
					"\\Bias[${1:${TM_SELECTED_TEXT}}]$0"
				),
				ls.parser.parse_snippet(
					{ trig = "Prob", name = "Probability Shorthand", dscr = "Probability function" },
					"\\Prob[${1:${TM_SELECTED_TEXT}}]$0"
				),
			}, {
				type = "snippets",
				priority = 1,
				condition = utils.pipe({ is_math }),
				wordTrig = true,
			})
		end,
	},
	{
		"ryleelyman/latex.nvim",
		opts = {
			conceals = {
				enabled = {
					"greek",
					"math",
					-- "script",
					-- "delim",
					"font",
				},
				add = {},
			},
			imaps = {
				enabled = false,
				add = {},
				default_leader = "`",
			},
			surrounds = {
				enabled = false,
				command = "c",
				environment = "e",
			},
		},
		config = function()
			require("latex").setup(opts)
			vim.opt.conceallevel = 2
		end,
	},
}
