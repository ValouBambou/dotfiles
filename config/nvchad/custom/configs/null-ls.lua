local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier,
  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- Python
  b.formatting.black,

  -- Rust
  b.formatting.rustfmt,

  -- latex
  b.formatting.latexindent,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- format on save
local fmt_save = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format {
          bufnr = bufnr,
          filter = function(clien)
            return clien.name == "null-ls"
          end,
        }
        -- for nvim 0.7 vim.lsp.buf.formatting_sync()
      end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = fmt_save,
}
