local keymap = vim.keymap.set

-- Beter escape
keymap("i", "jk", "<Esc>")

-- Clear search highlights
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Move entire line(s) up or down ala vscode
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==")
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==")
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Keep cursor vertically centered during half-page jumps
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Keep cursor vertically centered with search results
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Go to beginning (first non-whitespace character) and end of a line
keymap("n", "H", "_")
keymap("n", "L", "$")

-- Better window movement
keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize +2<CR>")







