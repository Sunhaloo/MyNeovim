-- Added @devaslife "Solarized-Osaka" coloursheme
return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        -- Added transparency
        transparent = true,
      }
    end,
  },
  -- Added "Everforest" colorscheme
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({})
    end,
  },
  -- Added "TokyoNight" colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  -- Added "OneDark" colorscheme
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        transparent = true,
        lualine = {
          transparent = true,
        },
        require("notify").setup({
          background_colour = "#000000",
        }),
      })
    end,
  },
  -- Added "Gruvbox" colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        transparent = true,
        undercurl = true,
        lualine = {
          transparent = true,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
    }),
  },
}
