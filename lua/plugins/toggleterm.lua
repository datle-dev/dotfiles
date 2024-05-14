return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup({
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { buffer = 0 })
      --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { buffer = 0 })
    })
  end
}
