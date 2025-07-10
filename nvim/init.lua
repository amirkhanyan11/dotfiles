-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


vim.opt.termguicolors = true
vim.cmd("colorscheme kanagawa-dragon")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
vim.g.snacks_animate = false

-- require("notify").setup({
--   background_colour= "#000000",
-- })
