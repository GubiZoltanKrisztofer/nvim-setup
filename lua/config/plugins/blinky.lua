return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
      keymap = { preset = "default" },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      menu = {
        auto_show = true,
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind" },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },

        list = {
          max_items = 200,

          selection = {
            preselect = true,
            auto_insert = true,
          },

          cycle = {
            from_bottom = true,
            from_top = true,
          },
        },
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        sql = { "buffer", "vim-dadbod-completion" },
      },
      signature = { enabled = true },
      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
  },
}
