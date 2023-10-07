vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Move to previous/next (Alt+< or >)
keymap.set('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
keymap.set('n', '≥', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next (Alt+Shift+< or >)
keymap.set('n', '¯', '<Cmd>BufferMovePrevious<CR>', opts)
keymap.set('n', '˘', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position (Alt + 0-9)
keymap.set('n', '¡', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '™', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '£', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '¢', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '∞', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '§', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '¶', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '•', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', 'ª', '<Cmd>BufferGoto 9<CR>', opts)
keymap.set('n', 'º', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer (Alt-P)
keymap.set('n', 'π', '<Cmd>BufferPin<CR>', opts)

-- Close buffer (Alt-C)
keymap.set('n', 'ç', '<Cmd>BufferClose<CR>', opts)

-- Close all but current (Alt-Shift-C)
keymap.set('n', 'Ç', '<Cmd>BufferCloseAllButCurrent<CR>', opts)

-- Magic buffer-picking mode
keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

-- Sort automatically by...
keymap.set('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap.set('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap.set('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap.set('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
