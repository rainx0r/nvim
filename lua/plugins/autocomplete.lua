return {
  { -- Autocompletion
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
      keymap = { preset = 'default' },
      signature = { enabled = true },

      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        accept = { auto_brackets = { enabled = true }, },
        menu = {
          draw = {
            padding = 0,
            components = {
              kind_icon = {
                text = function(ctx)
                  return ctx.icon_gap .. ctx.kind_icon .. ctx.icon_gap
                end,
              },
              kind = {
                text = function(ctx)
                  return " (" .. ctx.kind .. ") "
                end,
                highlight = function(_)
                  return { { 0, 0, group = "BlinkCmpMenu" } }
                end
              }
            },
            columns = {
              { "kind_icon", },
              { "label",     "label_description", "kind", gap = 1 },
            },
            treesitter = { 'lsp' },
          }
        },
      },

      appearance = {
        nerd_font_variant = 'normal'
      },

      sources = {
        default = { 'lsp', 'path', 'snippets' },
      },
    },
  },
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
      }
    end
  }
}
