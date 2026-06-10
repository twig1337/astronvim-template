---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",
        "prettier",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",

        "mdx-analyzer",
        "java-language-server",
        "docker-language-server",
        "css-lsp",
        "dockerfile-language-server",
        "python-lsp-server",
        "vim-language-server",
        "laravel-ls",
        "yaml-language-server",
        "html-lsp",
        "docker-compose-language-service",
        "bash-language-server",
        "typescript-language-server",
        "helm-ls",
        "intelephense",
        "tofu-ls",
        "terraform-ls",
        "tailwindcss-language-server",
        "json-lsp",
        "jq",
      },
    },
  },
}
