local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

	opts.desc = "Show LSP references"
	vim.keymap.set('n', 'gR', '<cmd>Telescope lsp_references<CR>', opts)

	opts.desc = "Go to declaration"
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

	opts.desc = "Show LSP definitions"
	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)

	opts.desc = "Show LSP implementations"
	vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)

	opts.desc = "Show LSP type definitions" vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<CR>', opts)

	opts.desc = "See available code actions"
	vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

	opts.desc = "Smart rename"
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

	opts.desc = "Show buffer diagnostics"
	vim.keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<CR>', opts)

	opts.desc = "Show line diagnostics"
	vim.keymap.set('n', '<leader>d', function() vim.diagnostics.open_float() end, opts)

	opts.desc = "Go to previous diagnostics"
	vim.keymap.set('n', '[d', function() vim.diagnostics.goto_prev() end, opts)

	opts.desc = "Go to next diagnostics"
	vim.keymap.set('n', ']d', function() vim.diagnostics.goto_next() end, opts)

	opts.desc = "Show documentation"
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)

	opts.desc = "Restart LSP"
	vim.keymap.set('n', '<leader>rl', '<cmd>LspRestart<CR>', opts)

    opts.desc = "Signature help"
    vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end

local capabilities = cmp_nvim_lsp.default_capabilities()
--[[ 	
'tsserver',
'html',
'cssls',
'jdtls',
'pyright',
'sqlls',
'rust_analyzer'	
--]]

--[[
lspconfig['jdtls'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
--]]


lspconfig['tsserver'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig['html'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig['cssls'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig['pyright'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig['sqlls'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig['rust_analyzer'].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

