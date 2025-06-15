return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "toml",
        "yaml",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter").setup(opts)
    end,
  }
}

