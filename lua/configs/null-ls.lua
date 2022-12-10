require("null-ls").setup(astronvim.user_plugin_opts("plugins.null-ls", { on_attach = astronvim.lsp.on_attach }))
local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({
      extra_filetypes = { "toml" },
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
    }),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.stylua,
    formatting.blade_formatter,
    formatting.google_java_format,
    diagnostics.flake8,
  },

  -- on_attach = function(client)
  on_attach = function()
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format{async=true}")
    --  if client.resolved_capabilities.document_formatting then
    -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
    -- end
  end,
})
