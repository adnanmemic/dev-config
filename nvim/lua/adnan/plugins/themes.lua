-- set theme
local theme = "onedark"

return {
    {
        "folke/tokyonight.nvim",

        enabled = theme == "tokyonight",

        -- configs
        config = function()
            require("tokyonight").setup({
                -- style: 'night', 'storm', 'day', 'moon'
                style = "storm",
                transparent = true,
            })

            vim.cmd.colorscheme(theme)
        end,
    },
    {
        "navarasu/onedark.nvim",

        enabled = theme == "onedark",

        -- configs
        config = function()
            require("onedark").setup({
                -- style: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
                style = "dark",
                transparent = true,
            })

            vim.cmd.colorscheme(theme)
        end,
    },
}
