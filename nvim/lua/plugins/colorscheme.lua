return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "carbonfox",
        },
      },

      {
        "EdenEast/nightfox.nvim",
      },
    },
  },

  {
    "EdenEast/nightfox.nvim",
    opts = {
      groups = {
        all = {
          NormalFloat = { bg = "#0d0d0d" },
        },
      },

      palettes = {
        carbonfox = {
          blue = "#7aa2f7",
          cyan = "#7dcfff",
        },
      },
    },
  },
}
