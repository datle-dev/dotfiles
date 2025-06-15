return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>k",
        function()
          require("conform").format({ async = true })
        end,
        mode = "",
        desc = "format buffer",
      },
    },
    ---@module "conform"
    ---@type conform.setupOpts
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "ruff_format" },
        rust = { "rustfmt" },
      },
      config = function(_, opts)
        require("conform").setup(opts)
      end,
    }
  }
}

