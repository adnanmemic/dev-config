return {
    {
        "mason-org/mason-lspconfig.nvim",

        -- configs
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "jdtls",
                    "lua_ls",
                    "bashls",
                    "pyright",
                },
            })
        end,
    },
    {
        "mason-org/mason.nvim",

        -- configs
        config = function()
            require("mason").setup()
        end,
    },
    {
        "neovim/nvim-lspconfig",

        -- configs
        config = function()
            -- diagnostics
            vim.diagnostic.config({
                virtual_text = true,
            })

            -- configs for lua language server
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            -- keymaps
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gr", vim.lsp.buf.references)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
            vim.keymap.set("n", "K", vim.lsp.buf.hover)

            vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
        end,
    },
    {
        -- additional jdtls functionality
        "mfussenegger/nvim-jdtls",
    },
}
