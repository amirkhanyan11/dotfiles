require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Misc

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("x", "<leader>p", [["_dP]])


--- Telescope
map('n', '<leader><space>', "<cmd>Telescope find_files<cr>", { desc = 'Telescope find files' })

-- Netrw
map('n', '<leader>e', "<cmd>Explore<cr>", { desc = 'Explore file' })

--- Harpoon
map('n', '<leader>H', function()
    require("harpoon.mark").add_file()
end, { desc = 'Harpoon add file'})

map('n', '<leader>h', function()
    require("harpoon.ui").toggle_quick_menu()
end, { desc = 'Harpoon toggle quick menu'})

for i = 1, 4 do
    map('n', '<leader>' .. i, function()
        require("harpoon.ui").nav_file(i)
    end, { desc = 'Harpoon add file'})
end


-- Undo nvchads retarded remaps

del("n", ";")

-- nvimtree
del("n", "<C-n>")
del("n", "<leader>e")

-- telescope
del("n", "<leader>fw")
del("n", "<leader>fb")
del("n", "<leader>fh")
del("n", "<leader>ma")
del("n", "<leader>fo")
del("n", "<leader>fz")
del("n", "<leader>cm")
del("n", "<leader>gt")
del("n", "<leader>pt")

del("n", "<leader>th")

del("n", "<leader>ff")

del("n", "<leader>fa")

-- terminal
del("t", "<C-x>")

-- new terminals
del("n", "<leader>h")

del("n", "<leader>v")

