return {

  { "dasupradyumna/midnight.nvim" },



  { "rose-pine/neovim",
     opts = {
        enable = {
        terminal = false,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically

    styles = {
        bold = true,
        italic = true,
        transparency = true,
        },
     },

    }, 
  },
}
