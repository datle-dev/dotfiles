vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'highlight on yank',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})
