-- Variables
local opts = { noremap = true, silent = true }
local nv_modes = { 'n', 'v' }
local iv_modes = { 'i', 'v' }
local ivx_modes = { 'i', 'v', 'x' }
local nivx_modes = { 'n', 'i', 'v', 'x' }

-- Change default navigation keys
vim.keymap.set(nv_modes, 'k', '<Down>', opts)
vim.keymap.set(nv_modes, 'j', '<Left>', opts)
vim.keymap.set(nv_modes, 'l', '<Right>', opts)
vim.keymap.set(nv_modes, 'i', '<Up>', opts)
vim.keymap.set(nv_modes, 'h', '<insert>', opts)

-- Change <ESC> to 'zz'
vim.keymap.set(ivx_modes, 'zz', '<ESC>', opts)

-- Tab several times
vim.keymap.set('v', '>', '>gv', opts)                 
vim.keymap.set('v', '<', '<gv', opts)                  

-- Move text up and down
vim.keymap.set(nv_modes, '<C-k>', ':m .+1<CR>==')
vim.keymap.set(nv_modes, '<C-i>', ':m .-2<CR>==')

-- Move text lines up and down
vim.keymap.set("x", "<C-k>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<C-i>", ":m '<-2<CR>gv=gv", opts)

-- Plugins
    -- Neo-tree
    -- Open Neotree on Ctrl-e
    vim.keymap.set(nivx_modes, '<C-e>', ':Neotree<CR>', opts)
