return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "json-lsp",
        "prettier",

        -- python
        "pyright",
        "black",

        -- rust
        "rust-analyzer",
        -- shell
        "shfmt",
        "shellcheck",
        -- C/C++
        "clangd",
        "clang-format",

        -- latex and markdown + language tool
        "ltex-ls",
      },
    },
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },
  ["tpope/vim-fugitive"] = {
    disable = false,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    config = function()
      require "plugins.configs.treesitter"
      require "custom.plugins.treesitter"
    end,
  },
}
