return {
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.csharpier,
                    null_ls.builtins.diagnostics.semgrep,
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },

        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                },
            })
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer", "csharp_ls" },

                automatic_installation = true,
            })

            local lspconfig = require("lspconfig")

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                root_dir  = require("lspconfig/util").root_pattern("Cargo.toml"),
                settings = {
                    ["rust_analyzer"] = {
                        cargo = {
                            allFeatures = true,
                        },
                    },
                },
            })
            lspconfig.csharp_ls.setup({ capabilities = capabilities })

            vim.keymap.set("n", "<S-k>", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<Leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<Leader>ff", vim.lsp.buf.format, {})
        end,
    },
}
