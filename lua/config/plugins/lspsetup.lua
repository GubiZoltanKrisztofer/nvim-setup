return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "jdtls" },
      })

      vim.lsp.config["lua_ls"] = {
        cmd = { "lua-language-server" },
        filetype = { "lua" },
        capabilities = { capabilities },
        settings = {
          lua = {
            runtime = {
              version = "luaJIT",
            },
          },
        },
      }

      vim.lsp.enable("lua_ls")
    end,
  },
}
