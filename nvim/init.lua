-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


vim.opt.termguicolors = true
vim.cmd("colorscheme rose-pine-moon")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")

-- require("notify").setup({
--   background_colour= "#000000",
-- })
