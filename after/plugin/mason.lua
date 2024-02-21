require'mason'.setup({

})

local handlers =  {
    ["lua_ls"] = function ()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,
    ["tsserver"] = function()
        require("ghd8.prettier")
        vim.keymap.set({ 'n', 'v' }, '<leader>pr', ':Prettier<CR>', { noremap = true, silent = true })
    end,
}

require'mason-lspconfig'.setup({

	ensure_installed = {
		'tsserver',
		'html',
		'cssls',
		'jdtls',
		'pyright',
		'sqlls',
		'rust_analyzer',
        'lua_ls'
	},
	automatic_installation = true,
    handlers = handlers,
})
