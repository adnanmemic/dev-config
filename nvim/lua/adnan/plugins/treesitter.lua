return{
	'nvim-treesitter/nvim-treesitter',

	lazy = false,
	build = ':TSUpdate',
	config = function()
		local parsers = {
			'java',
			'python',
			'lua',
			'c'
		}

		require('nvim-treesitter').install(parsers)

		vim.api.nvim_create_autocmd("FileType", {
            pattern = parsers,
            callback = function()
                vim.treesitter.start()
            end,
        })
	end
}
