local function env_set(name)
  return (vim.env[name] or '') ~= ''
end

local function navigate(key, direction)
  return function()
    if vim.fn.winnr(key) ~= vim.fn.winnr() then
      vim.cmd.wincmd(key)
    else
      vim.system { 'rex', 'focus', '-s', vim.env.REX_SESSION, direction }
    end
  end
end

return {
  {
    'rex-navigation',
    virtual = true,
    cond = not env_set 'TMUX' and env_set 'REX_SESSION' and env_set 'REX_BLOCK',
    keys = {
      { '<c-h>', navigate('h', 'left'), desc = 'Focus window or Rex pane: left' },
      { '<c-j>', navigate('j', 'down'), desc = 'Focus window or Rex pane: down' },
      { '<c-k>', navigate('k', 'up'), desc = 'Focus window or Rex pane: up' },
      { '<c-l>', navigate('l', 'right'), desc = 'Focus window or Rex pane: right' },
      { '<c-\\>', '<cmd>wincmd p<cr>', desc = 'Focus previous window' },
    },
  },
}
