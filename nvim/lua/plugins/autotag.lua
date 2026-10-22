return {
	"windwp/nvim-ts-autotag",

	ft = { "html", "javascriptreact", "typescriptreact", "xml" },

	opts = {
		opts = {
			enable_close = true, -- auto close tags
			enable_rename = true, -- auto rename pairs of tags
			enable_close_on_slash = false, -- auto close on trailing </
		},
	},
}
