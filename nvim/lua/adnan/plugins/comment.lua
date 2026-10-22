return {
	"numToStr/Comment.nvim",

	event = "VeryLazy",

	-- configs
	config = function()
		require("Comment").setup()
	end,
}
