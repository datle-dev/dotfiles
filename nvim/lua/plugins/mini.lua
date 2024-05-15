return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.files').setup({
      windows = {
        preview = true,
        width_preview = 80,
      }
    })
    vim.keymap.set('n', '<leader>mf', function() require('mini.files').open() end, { desc = "[f]iles" })

    --require('mini.statusline').setup({

    --})
  end,
}
