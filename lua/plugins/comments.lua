return {
	-- use gc in visual modes to comment code
	-- use gcc in normal mode to toggle current line
	"numToStr/Comment.nvim",

	config = function()
		require("Comment").setup()
	end,
}
