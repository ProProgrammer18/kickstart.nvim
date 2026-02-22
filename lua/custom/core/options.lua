vim.g.netrw_liststyle = 3

-- [[CUSTOM KEY MAPS]]

local keymap = vim.keymap.set

-- [INPUT]
-- 1. Toggle insert mode
keymap('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- [FILE EXPLORER - Neo-tree]
-- 1. Toggle file explorer
keymap('n', '<leader>ee', '<cmd>Neotree toggle filesystem reveal_force_cwd<CR>', { desc = 'Toggle file explorer' })

-- 2. Reveal current file
keymap('n', '<leader>ef', '<cmd>Neotree reveal<CR>', { desc = 'Reveal current file in explorer' })
