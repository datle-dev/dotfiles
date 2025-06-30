require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.autocmd")

vim.lsp.enable({
  "gopls",
  "lua_ls",
  "marksman",
  "pyright",
  "rust_analyzer",
})
