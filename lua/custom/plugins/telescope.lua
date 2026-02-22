return {
  'nvim-telescope/telescope.nvim',

  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
  },

  build = 'make',

  opts = function(_, opts)
    local actions = require 'telescope.actions'

    opts.defaults = vim.tbl_deep_extend('force', opts.defaults or {}, {
      layout_strategy = 'horizontal',

      layout_config = {
        prompt_position = 'top',
        preview_width = 0.55,
        width = 0.9,
        height = 0.85,
      },

      sorting_strategy = 'ascending',

      file_ignore_patterns = {
        'node_modules',
        '.git/',
        'dist',
        'build',
        '%.lock',
        '__pycache__',
      },

      mappings = {
        i = {
          ['<C-j>'] = actions.move_selection_next,
          ['<C-k>'] = actions.move_selection_previous,
          ['<C-q>'] = actions.send_to_qflist,
        },
      },
    })

    return opts
  end,
  keys = {
    {
      '<leader>tf',
      function() require('telescope.builtin').find_files() end,
      desc = 'Find files',
    },
    {
      '<leader>tg',
      function() require('telescope.builtin').live_grep() end,
      desc = 'Live grep',
    },
    {
      '<leader>tb',
      function() require('telescope.builtin').buffers() end,
      desc = 'Buffers',
    },
    {
      '<leader>tr',
      function() require('telescope.builtin').oldfiles() end,
      desc = 'Recent Files',
    },
  },
  config = function(_, opts)
    require('telescope').setup(opts)
    require('telescope').load_extension 'fzf'
  end,
}
