return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-python',
    },
    config = function()
      local neotest = require 'neotest'
      ---@diagnostic disable-next-line: missing-fields
      neotest.setup {
        adapters = {
          require 'neotest-python' {
            dap = { justMyCode = false },
          },
        },
        ---@diagnostic disable-next-line: missing-fields
        summary = {
          mappings = {
            attach = 'a',
            clear_marked = 'M',
            clear_target = 'T',
            debug = 'd',
            debug_marked = 'D',
            expand = { '<CR>', '<2-LeftMouse>' },
            expand_all = 'e',
            jumpto = 'i',
            mark = 'm',
            next_failed = 'J',
            output = 'o',
            prev_failed = 'K',
            run = 'r',
            run_marked = 'R',
            short = 'O',
            stop = 'u',
            target = 't',
            watch = 'w',
          },
        },
      }

      vim.keymap.set('n', '<leader>ts', neotest.summary.toggle, { desc = 'Open [T]est [S]ummary' })
      vim.keymap.set('n', '<leader>tr', function()
        neotest.run.run()
        neotest.summary.open()
      end, { desc = '[T]est [R]un' })
      vim.keymap.set('n', '<leader>to', function()
        neotest.output.open { last_run = true, enter = true }
      end, { desc = '[T]est [O]output' })
      vim.keymap.set('n', '<leader>tf', function()
        neotest.run.run(vim.fn.expand '%')
      end, { desc = '[T]est Current [F]ile' })
      vim.keymap.set('n', '<leader>td', function()
        ---@diagnostic disable-next-line: missing-fields
        neotest.run.run { strategy = 'dap' }
      end, { desc = '[T]est [D]ebug' })
    end,
  },
}
