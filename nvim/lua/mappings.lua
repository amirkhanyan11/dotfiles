local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')

-- Misc

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

map({ 'n', 'v' }, '<leader>y', [["+y]])
map('n', '<leader>Y', [["+Y]])

map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('x', '<leader>p', [["_dP]])

----------------------------- Telescope ---------------------------------- 
map('n', '<leader><space>', '<cmd>Telescope find_files<cr>', { desc = 'Telescope find files' })

map('n', '<leader>f', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'Fuzzily search in current buffer' })

map('n', '<leader>/', function()
    require('telescope.builtin').live_grep {
      prompt_title = 'Live Grep',
    }
  end,
  { desc = '[S]earch [/] in cwd' }
)

vim.keymap.set('n', '<leader>cf', function()
  require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' } end,
  { desc = '[S]earch [N]eovim files' })

map('n', '<leader>gc', function()
  require('telescope.builtin').git_commits()
end, { desc = 'Git commits' })

-------------------------------------------------------------------------- 

-- Netrw
map('n', '<leader>e', '<cmd>Explore<cr>', { desc = 'Explore file' })

--- Harpoon
map('n', '<leader>H', function() require('harpoon.mark').add_file() end, { desc = 'Harpoon add file' })

map('n', '<leader>h', function() require('harpoon.ui').toggle_quick_menu() end, { desc = 'Harpoon toggle quick menu' })

for i = 1, 4 do
  map('n', '<leader>' .. i, function() require('harpoon.ui').nav_file(i) end, { desc = 'Harpoon goto file' .. i })
end
