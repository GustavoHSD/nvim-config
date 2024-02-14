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
