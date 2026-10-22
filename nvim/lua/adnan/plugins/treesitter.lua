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
			"yaml",
			"gitignore",
		}

		require("nvim-treesitter").install(parsers)

		local filetypes = vim.deepcopy(parsers)
		vim.list_extend(filetypes, {
			"sh",
			"javascriptreact",
			"jsonc",
		}) -- additional filetypes that use existing parsers

		vim.api.nvim_create_autocmd("FileType", {
			pattern = filetypes,
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
