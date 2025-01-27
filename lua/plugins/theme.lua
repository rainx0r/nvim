return {
  { 'rktjmp/lush.nvim' },
  {
    'rainx0r-dark',
    dir = '~/.config/nvim/lua/themes/rainx0r-dark/',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'rainx0r-dark'
      vim.cmd.hi 'Comment gui=none'
    end,
    lazy = true,
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },
}
