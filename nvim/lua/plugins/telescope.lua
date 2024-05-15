return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end
    },
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
    })

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    local builtin = require('telescope.builtin')
    local keymap = vim.keymap.set
    keymap('n', '<leader><space>', function() builtin.buffers { sort_lastused = true } end)
    keymap('n', '<leader>sf', function() builtin.find_files { previewer = false } end)
    keymap('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath('config') }
    end)
  end
}
