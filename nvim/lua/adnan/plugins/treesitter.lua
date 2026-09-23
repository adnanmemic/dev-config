return{
	'nvim-treesitter/nvim-treesitter',

	lazy = false,
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter').install({
			'java',
			'python',
			'lua',
			'c'
		})
	end
}
