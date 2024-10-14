function config_mason_lsp()
    -- Imports should be done in this order: mason then mason-lspconfig
    require("mason").setup()
    require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pylsp" },
    }

    -- Setup servers
    require("lspconfig").lua_ls.setup{}
    require("lspconfig").pylsp.setup{}
end

return {
{
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = config_mason_lsp,
},
}
