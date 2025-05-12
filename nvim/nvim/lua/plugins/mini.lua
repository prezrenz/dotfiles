return {
	{
		"echasnovski/mini.pairs",
		version = false,
		config = function()
			require("mini.pairs").setup()
		end,
	},
	{
		"echasnovski/mini.comment",
		version = false,
		config = function()
			require("mini.comment").setup({ mappings = { comment = "tc", comment_line = "tcc", comment_visual = "tc" } })
		end,
	},
	{
		"echasnovski/mini.indentscope",
		version = false,
		config = function()
			require("mini.indentscope").setup({ draw = {
				delay = 0,
				animation = function(s, n)
					return 0
				end,
			} })
		end,
	},
}
