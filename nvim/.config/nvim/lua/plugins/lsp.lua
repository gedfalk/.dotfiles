return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        -- the thing that loads and installs different LSPs
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})

            -- see :h vim.lsp.buf for all available functions
            vim.keymap.set('n', '<C-h>', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<C-d>', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<C-c>a', vim.lsp.buf.code_action, {})
        end
    }
}
