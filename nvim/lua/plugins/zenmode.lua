return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      options = {
        cursorline = false,
        number = false,
        relativenumber = false,
      },
      plugins = {
        options = {
          laststatus = 0,
        },
        alacritty = {
          enabled = true,
          font = "22",
        },
      },
    },
  },
}
