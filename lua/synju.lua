-- Always show tabline
vim.opt.showtabline = 2

-- Enable mouse clicking
vim.opt.mouse = 'a'

-- Treesitter config
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "vue", "javascript", "html", "css" }, -- Add relevant languages
  highlight = { enable = true },
  indent = { enable = true },
  fold = { enable = true },
}

-- Code folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevel = 99  -- To show all folds by default

-- Turn off wrapping
vim.opt.wrap = false

-- Relative Lin Numbers
vim.opt.number=true
vim.opt.relativenumber=true

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "bashls",  -- bash-language-server
        "cssls",  -- css-lsp
        "cssmodules_ls",  -- css-modules-language-server
        "dockerls",  -- dockerfile-language-server
        "docker_compose_language_service",  -- docker-compose-language-service
        "ember",  -- ember-language-server
        "emmet_ls",  -- emmet-language-server
        "eslint",  -- eslint-lsp
        "html",  -- html-lsp
        "jsonls",  -- json-lsp
        "kotlin_language_server",  -- kotlin-language-server
        "lua_ls",  -- lua-language-server
        "marksman",  -- markdown-lsp
        "nginx_ls",  -- nginx-language-server
        "phpactor",  -- php-lsp
        "pyright",  -- Python LSP (pyright)
        "pylsp",  -- Python LSP (pylsp)
        "sqlls",  -- SQL language server
        "stylelint_lsp",  -- stylelint-lsp
        "tailwindcss",  -- tailwindcss-language-server
        "tsserver",  -- TypeScript/JavaScript LSP
        "vimls",  -- vim-language-server
        "vuels",  -- Vue language server
    },
    automatic_installation = true,  -- Automatically install missing LSPs
}

