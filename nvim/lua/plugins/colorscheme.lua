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
        style = "dark",
        transparent = true, -- Turn off if you want OneDark Theme to take the wheel instead of Windows terminal's background colour
        lualine = {
          transparent = true, -- Turn off if you want OneDark Theme to take the wheel instead of Windows terminal's background colour
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
        strikethrough = true,
        contrast = "hard",
        undercurl = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        lualine = {
          transparent = true,
        },
      })
    end,
  },
  -- Added Catppuccin Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
    }),
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        darken = {
          floats = false,
          sidebars = {
            enabled = true,
            list = {},
          },
        },
      })
    end,
  },
}
