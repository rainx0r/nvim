local lsps = { 'pyright', 'ty', 'pyrefly' }
local known = {}
for _, s in ipairs(lsps) do
  known[s] = true
end

---@param server string
local function start(server)
  vim.lsp.enable { server }
end

---@param server string
local function stop(server)
  for _, c in pairs(vim.lsp.get_clients { bufnr = 0 }) do
    if c.name == server then
      c:stop(true)
    end
  end
end

local function stop_known_clients()
  for _, c in pairs(vim.lsp.get_clients { bufnr = 0 }) do
    if known[c.name] then
      c:stop(true)
    end
  end
end

vim.api.nvim_create_user_command('PythonLspUse', function(opts)
  local server = opts.args
  if not known[server] then
    vim.notify('Unknown server: ' .. server, vim.log.levels.ERROR)
    return
  end
  stop_known_clients()
  start(server)
  vim.notify('Python LSP: ' .. server .. ' active')
end, {
  nargs = 1,
  complete = function()
    return lsps
  end,
})

vim.api.nvim_create_user_command('PythonLspStart', function(opts)
  local server = opts.args
  if not known[server] then
    vim.notify('Unknown server: ' .. server, vim.log.levels.ERROR)
    return
  end
  start(server)
  vim.notify('Python LSP: ' .. server .. ' started')
end, {
  nargs = 1,
  complete = function()
    return lsps
  end,
})

vim.api.nvim_create_user_command('PythonLspStop', function(opts)
  local server = opts.args
  if not known[server] then
    vim.notify('Unknown server: ' .. server, vim.log.levels.ERROR)
    return
  end
  stop(server)
  vim.notify('Python LSP: ' .. server .. ' stopped')
end, {
  nargs = 1,
  complete = function()
    return lsps
  end,
})
