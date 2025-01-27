vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float)
vim.keymap.set('n', ']g', vim.diagnostic.goto_next)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>el', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>ej', '<cmd>split<CR>')
vim.keymap.set('n', '<C-x>', '<cmd>bp<bar>sp<bar>bn<bar>bd<CR>')
vim.keymap.set('n', '<C-w>', '<cmd>bnext<CR>')
vim.keymap.set('n', '<C-q>', '<cmd>bprev<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
