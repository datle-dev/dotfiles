-- Nerd font
vim.g.have_nerd_font = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Hide mode
vim.opt.showmode = false

-- Sync OS and nvim clipboard
vim.opt.clipboard = "unnamedplus"

-- Tabs and spacing
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

-- Save undo history
vim.opt.undofile = true

-- Case insensitive search unless capital letter is present
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeout = true
vim.opt.timeoutlen = 300

-- Configure new splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Whitespace character display
vim.opt.list = true
vim.opt.listchars = { tab = "│ ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Cursor and lines
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.wrap = false

-- Use 24-bit color
vim.opt.termguicolors = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
