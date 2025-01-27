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
        default = { 'lsp', 'path', 'snippets', "avante_commands", "avante_mentions", "avante_files" },
        providers = {
          avante_commands = {
            name = "avante_commands",
            module = "blink.compat.source",
            score_offset = 90,
            opts = {},
          },
          avante_files = {
            name = "avante_commands",
            module = "blink.compat.source",
            score_offset = 100,
            opts = {},
          },
          avante_mentions = {
            name = "avante_mentions",
            module = "blink.compat.source",
            score_offset = 1000,
            opts = {},
          },
        },
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
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false,
    opts = {
      hints = { enabled = false },
      file_selector = {
        provider = "fzf",
        provider_opts = {},
      },
      behaviour = {
        auto_suggestions = false,
      }
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.icons",
      "ibhagwan/fzf-lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
      {
        "folke/which-key.nvim",
        opts = {
          spec = {
            { "<leader>a", group = "ai" },
          },
        },
      },
    },
  },
  { -- For the Avante.nvim plugin
    'saghen/blink.compat',
    version = '*',
    lazy = true,
    opts = {},
  },
}
