require("blink.cmp").setup {
  keymap = {
    preset = "default",

    -- navigation
    ["<Tab>"] = { "select_and_accept", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<C-N>"] = { "select_next", "fallback" },        -- ✅ next with 'n'

    -- accept
    -- ["<Enter>"] = { "select_and_accept", "fallback" },
    ["<C-CR>"] = { "select_and_accept", "fallback" }, -- ✅ Ctrl + Enter

    -- docs
    ["<C-U>"] = { "scroll_documentation_up", "fallback" },
    ["<C-D>"] = { "scroll_documentation_down", "fallback" },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    documentation = {
      auto_show = true,
    },
  },

  sources = {
    default = { "lsp", "path", "buffer" },
  },

  fuzzy = {
    implementation = "prefer_rust_with_warning",
  },

  cmdline = {
    completion = {
      menu = {
        auto_show = true,
      },
    },
    keymap = {
      -- ["<Enter>"] = { "select_and_accept", "fallback" },
      ["<C-CR>"] = { "select_and_accept", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["n"] = { "select_next", "fallback" },      -- ✅ also in cmdline
    },
  },
}

