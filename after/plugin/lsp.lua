local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'lua_ls', 'jdtls', 'clangd', 'html', 'bashls', 'ast_grep', 'cssls', 'eslint', 'denols'},
  handlers = {
    lsp_zero.default_setup,
  }
})

