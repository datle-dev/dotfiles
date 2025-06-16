return {
  {
    "cbochs/grapple.nvim",
    opts = {
      icons = false,
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
      {
        "<leader>gm",
        function()
          vim.cmd("Grapple toggle")
          vim.notify("Marked with Grapple")
        end,
        desc = "grapple mark",
      },
      {
        "<leader>go",
        function()
          vim.cmd("Grapple toggle_tags")
          vim.notify("Opened Grapple UI")
        end,
        desc = "grapple open",
      },
      {
        "<leader>gn",
        function()
          vim.cmd("Grapple cycle_tags next")
          vim.notify("Grapple cycle next")
        end,
        desc = "grapple next",
      },
      {
        "<leader>gp",
        function()
          vim.cmd("Grapple cycle_tags prev")
          vim.notify("Grapple cycle previous")
        end,
        desc = "grapple previous",
      },
    },
  },
}
