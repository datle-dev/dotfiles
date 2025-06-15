return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
      },
    },
    config = function()
      require("mason-lspconfig").setup({
        automatic_enable = {
          "lua_ls",
          "rust_analyzer",
        },
      })
    end,
  },
}

