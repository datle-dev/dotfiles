return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "toml",
        "yaml",
      },
      auto_install = false,
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.looop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },
      additional_vim_regex_highlighting = false,
    },
    config = function(_, opts)
      require("nvim-treesitter").setup(opts)
    end,
  }
}

