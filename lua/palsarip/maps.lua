local keymap = vim.keymap

vim.g.mapleader = " "

-- Go to Previous path
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Go to normal mode
keymap.set("i", "<C-c>", "<Esc>")

-- VISUAL MODE (Moving highlighted line)
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Wrap
keymap.set("n", "J", "mzJ`z")

-- Jump
keymap.set("n", "<C-k>", "<C-d>zz")
keymap.set("n", "<C-j>", "<C-u>zz")

-- Tabs
keymap.set("n", "<leader>nt", vim.cmd.tabnew)
keymap.set("n", "<C-[>", vim.cmd.tabprevious)
keymap.set("n", "<C-]>", vim.cmd.tabNext)

-- Terminal
keymap.set("n", "<C-t>", vim.cmd.terminal)

-- Undo/Redo
keymap.set("i", "<C-Z>", "<C-O>u")
keymap.set("i", "<C-Y>", "<C-O><C-r>")

-- Utilities
keymap.set("i", "<C-S>", "<C-O>:update<cr>")

-- Neo tree
keymap.set("n", "<C-B>", vim.cmd.Neotree)

-- Comment
keymap.set("n", "<C-?>", "gcc")

-- [Devaslife remaps] --

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Tab>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
-- keymap.set('n', '<C-w><right>', '<C-w>>')
-- keymap.set('n', '<C-w><up>', '<C-w>+')
-- keymap.set('n', '<C-w><down>', '<C-w>-')
