local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h", { desc = "go to left window", remap = true } )
map("n", "<C-j>", "<C-w>j", { desc = "go to down window", remap = true } )
map("n", "<C-k>", "<C-w>k", { desc = "go to up window", remap = true } )
map("n", "<C-l>", "<C-w>l", { desc = "go to right window", remap = true } )

map("n", "<leader>fm", "<cmd>lua MiniFiles.open()<cr>", { desc = "mini.files" } )
