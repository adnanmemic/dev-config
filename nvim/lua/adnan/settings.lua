vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.opt.colorcolumn = "80"

vim.opt.wrap = false

vim.opt.backup = false
vim.opt.swapfile = false


vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.splitbelow = true -- splits show up below by default
vim.opt.splitright = true -- splits got to the right by default

vim.opt.laststatus = 3 -- show only a single global status line

-- highlight when yank
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ higroup="IncSearch", timeout=200 })
    end,
})
