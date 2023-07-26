local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "rust_analyzer", "ltex" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local rust_cap = {}
for key, value in pairs(capabilities) do
  rust_cap[key] = value
end

table.insert(rust_cap.textDocument.semanticTokens.tokenTypes, "formatSpecifier")
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = rust_cap,
}

capabilities.offsetEncoding = "utf-8"
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.ltex.settings = {}
