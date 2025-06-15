return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      indent = {
        animate = {
          enabled = false,
        },
      },
      scratch = {
      },
    },
    keys = {
      { "<leader>.", function() Snacks.scratch() end, desc = "toggle scratch buffer" },
      { "<leader>S", function() Snacks.scratch.select() end, desc = "select scratch buffer" },
    },
  }
}

