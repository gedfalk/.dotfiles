-- Variables
local opts = { noremap = true, silent = true }
local nv = { 'n', 'v' }
local iv = { 'i', 'v' }
local ivx = { 'i', 'v', 'x' }
local nivx = { 'n', 'i', 'v', 'x' }

-- Change default navigation keys
vim.keymap.set(nv, 'l', '<Right>', opts)
vim.keymap.set(nv, 'i', '<Up>', opts)
vim.keymap.set(nv, 'k', '<Down>', opts)
vim.keymap.set(nv, 'j', '<Left>', opts)
vim.keymap.set(nv, 'h', '<insert>', opts)

-- Scroll several lines/chars up-down/left-right with capital letters
vim.keymap.set(nv, 'I', '10<Up>', opts)
vim.keymap.set(nv, 'K', '10<Down>', opts)
vim.keymap.set(nv, 'J', '15<Left>', opts)
vim.keymap.set(nv, 'L', '15<Right>', opts)

-- Change <ESC> to 'zz'
vim.keymap.set(ivx, 'zz', '<ESC>', opts)

-- Tab several times
vim.keymap.set('v', '<C-l>', '>gv', opts)                 
vim.keymap.set('v', '<C-j>', '<gv', opts)
vim.keymap.set('n', '<C-l>', '>>', opts)
vim.keymap.set('n', '<C-j>', '<<', opts)

-- Move text up and down
vim.keymap.set(nv, '<C-k>', ':m .+1<CR>==')
vim.keymap.set(nv, '<C-i>', ':m .-2<CR>==')

-- Move text lines up and down
vim.keymap.set("x", "<C-k>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<C-i>", ":m '<-2<CR>gv=gv", opts)

-- Plugins
    -- Neo-tree
    -- Open Neotree on Ctrl-e
    vim.keymap.set(nivx, '<C-e>', ':Neotree<CR>', opts)
