require("lspconfig").sqls.setup({
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
   cmd = { "sqls", "-config", "sqls.yaml" },
  root_dir = require("lspconfig.util").root_pattern("sqls.yaml", ".git")
})

