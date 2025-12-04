-- lua/custom/core.lua
-- Global flags
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.breakindent = true
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300
-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

vim.o.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- See `:help 'confirm'`
vim.o.confirm = true
vim.o.number = true
vim.o.relativenumber = true
-- vim.o.list = false
vim.o.errorbells = false
vim.o.visualbell = false
vim.o.shellcmdflag = '-c'

--                               [[ Basic Keymaps ]]            <-- NOTE:
--  See `:help vim.keymap.set()`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>', { desc = 'Stop it!' }) -- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>', { desc = 'Stop it!' })
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>', { desc = 'Stop it!' })
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>', { desc = 'Stop it!' })

vim.keymap.set('n', '<C-j>', '<cmd>cnext<CR>', { desc = 'Jump to next Quickfix item' }) -- QuickFix
vim.keymap.set('n', '<C-k>', '<cmd>cprev<CR>', { desc = 'Jump to previous Quickfix item' })

vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '[w] Save the file' })
vim.keymap.set('n', '<leader>e', '<cmd>q<CR>', { desc = '[e] Exit the file' })

vim.keymap.set('n', '<A-Up>', '<cmd>resize +2<CR>', { desc = 'Increase window height' }) -- Window resizing
vim.keymap.set('n', '<A-Down>', '<cmd>resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<A-Right>', '<cmd>vertical resize +2<CR>', { desc = 'Increase window width' })
vim.keymap.set('n', '<A-Left>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease window width' })

vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Short to Esc' })
vim.keymap.set('i', 'kk', '<Esc>', { desc = 'Short to Esc' })
vim.keymap.set({ 'n', 'v', 'o' }, '<C-l>', '<End>', { desc = 'End of Line' })
vim.keymap.set({ 'n', 'v', 'o' }, '<C-h>', '^', { desc = 'Beginning of Line' })

vim.keymap.set('n', 'n', 'nzz', { desc = 'Next Search' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Previous Search' })

return {}
