local map = vim.keymap.set

-- move to window with <C> hjkl
-- map("n", "<C-h>", "<C-w>h", { desc = "go to left window", remap = true } )
-- map("n", "<C-j>", "<C-w>j", { desc = "go to down window", remap = true } )
-- map("n", "<C-k>", "<C-w>k", { desc = "go to up window", remap = true } )
-- map("n", "<C-l>", "<C-w>l", { desc = "go to right window", remap = true } )

-- resize window using <c> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

