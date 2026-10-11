return {
	"nvim-treesitter/nvim-treesitter",

	lazy = false,
	build = ":TSUpdate",
	config = function()
		local parsers = {
            "lua",
			"java",
			"python",
            "bash",
			"c",
            "javascript",
            "html",
            "css",
            "xml",
            "json",
            "jsonc",
            "yaml",
            "gitignore"
		}

		require("nvim-treesitter").install(parsers)

        local filetypes = vim.deepcopy(parsers)
        table.insert(filetypes, "sh") -- add 'sh' to the list because it uses the bash parser

		vim.api.nvim_create_autocmd("FileType", {
			pattern = filetypes,
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
