return {
  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('auto-session').setup {
        auto_session_suppress_dirs = {
          '~/',
          '~/Documents/Experiments',
          '~/Documents/Repositories',
          '~/Documents/Repositories/github.com/',
          '~/Downloads',
          '/',
        },
      }
    end,
  },
}
