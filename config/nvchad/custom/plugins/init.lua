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

        -- python
        "pyright",
        "black",

        -- rust
        "rust-analyzer",
        -- shell
        "shfmt",
        "shellcheck",
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after =     "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
  },
}
