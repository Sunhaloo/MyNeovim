-- Keymap File Written in Lua

-- Variables
local keymap = vim.keymap
local opts = { noremap = true, silent = false }

-- Leader Key
keymap.set("n", "<Space>", "", opts)
-- vim.gmapleader = " "
-- vim.g.maplocalleader = " "

-- <C-i> is not <C-i>, need to make it become <C-i>
keymap.set("n", "<C-i>", "<C-i>", opts)

-- NORMAL Mode

-- Increment / Decrement Numbers
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete A Word Backwards
keymap.set("n", "dw", "vb_d")

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Removing the annoying paste buffer / register thing
keymap.set("x", "p", [["_dP]])

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Open Lex
keymap.set("n", "lx", ":Lex<Return>", opts)

-- TABS

-- New Tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split Window ( Neovim )
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move Window ( From Neovim to Neovim )
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize Windows
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostic
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end)

-- INSERT Mode

-- Go to NORMAL Mode From INSERT Mode
keymap.set("i", "jk", "<ESC>", opts)

-- Navigation Within INSERT Mode
keymap.set("i", "<C-h>", "<Left>", opts)
keymap.set("i", "<C-l>", "<Right>", opts)
keymap.set("i", "<C-j>", "<Down>", opts)
keymap.set("i", "<C-k>", "<Up>", opts)

-- VISUAL Mode

-- Go to NORMAL Mode From VISUAL Mode
keymap.set("v", "jk", "<ESC>", opts)

-- Move Lines Of Text
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)

-- Paste even when in VISUAL Mode
keymap.set("v", "p", '"_dP', opts)

-- Stay in Indent Mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
keymap.set("n", "<leader>fg", ":Telescope git_files<cr>")
keymap.set("n", "<leader>fl", ":Telescope live_grep<cr>")
keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
