return {
  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('auto-session').setup {
        suppress_dirs = {
          '~/',
          '~/Documents/Experiments',
          '~/Experiments',
          '~/Documents/Repositories',
          '~/Repositories/',
          '~/Documents/Repositories/github.com/',
          '~/Repositories/github.com/',
          '~/Downloads',
          '/',
        },
      }
    end,
  },
}
