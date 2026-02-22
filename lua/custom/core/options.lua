vim.g.netrw_liststyle = 3

local keymap = vim.keymap.set

-- Toggle file explorer
keymap('n', '<leader>ee', '<cmd>Neotree toggle filesystem reveal_force_cwd<CR>', { desc = 'Toggle file explorer' })

-- Reveal current file
keymap('n', '<leader>ef', '<cmd>Neotree reveal<CR>', { desc = 'Reveal current file in explorer' })

-- Collapse explorer
keymap('n', '<leader>ec', '<cmd>Neotree action=close_all_nodes<CR>', { desc = 'Collapse file explorer' })

-- Refresh explorer
keymap('n', '<leader>er', '<cmd>Neotree refresh<CR>', { desc = 'Refresh file explorer' })
