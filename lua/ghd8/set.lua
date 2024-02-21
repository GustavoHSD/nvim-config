vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.cmd [[
augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'ghd8.jdtls_setup'.setup()
    autocmd BufNewFile *.java lua require'ghd8.javautils'.insertJavaTemplate()
augroup end
]]

