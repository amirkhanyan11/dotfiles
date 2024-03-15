-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


vim.cmd("colorscheme rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")

