-- place where I will store all the config file related to Neovim's UI
return {
    -- cursor column thing plugin
    { 
        "lukas-reineke/virt-column.nvim",
        opts = {
            -- use the character '|' as the column character
            char = { "|" },
            -- most programmers / programming langugaes asked that word count
            -- should not be greater than 80 ( something something ) in a line
            virtcolumn = "80",
            -- change the colour of the character that is used
            -- use the command `highlight` in neovim to see bunch of colours
            highlight = { "StatusLineNC" }
        }
    },
    -- which key plugin
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {
          -- basically 'classic' style with borders and floating
          preset = "modern",
      },
      -- keymap to show the ( full ) keys for which-key
      keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        },
      },
    },
    -- zen mode plugin
    {
      "folke/zen-mode.nvim",
      opts = {
          window = {
              backdrop = 0.30,
              width = 120,
              height = 1,
              -- Neovim built-in UI options
              options = {
                  relativenumber = true,
                  cursorline = false,
                  cursorcolumn = false
              },
          },
          plugins = {
              -- futher options
              options = {
                  -- enabled the 'futher options'
                  enabled = true,
                  -- removes the status line
                  laststatus = 0,
                  -- removes the command we are doing
                  -- command like `diw`, `ciw` and more will now be shown
                  showcmd = false
              },
              -- remove status line from tmux
              tmux = { enabled = true },
              -- terminal settings
              kitty = {
                  enabled = true,
                  font = "+4",
              },
          },
      }
    },
    -- bufferline plugin
    {
        'akinsho/bufferline.nvim',
        event = "VeryLazy",
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        keys = {
            { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
            { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
        },
        opts = function()
            local bufferline = require('bufferline')
            return {
                options = {
                    mode = "tabs",
                    numbers = "none",
                    separator_style = "slant",
                    show_buffer_close_icons = true,
                    show_close_icon = true,
                    -- Combining presets to remove italics but keep bold
                    style_preset = {
                        bufferline.style_preset.no_italic,
                        bufferline.style_preset.bold,
                    },
                },
            }
        end,
    },
    -- lualine / statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            -- create variable to configure lazy pending updates count
            local lazy_status = require("lazy.status")
            require("lualine").setup({
                options = {
                    -- sets the theme to whatever I am currently using
                    theme = "auto",
                },
                -- see the "sections" with `:h lualine`
                sections = {
                    lualine_x = {
                        {
                            lazy_status.updates,
                            cond = lazy_status.has_updates,
                        },
                        -- removing the encoding type
                        -- { "encoding" },
                        -- shows the file format ( penguin logo )
                        { "fileformat" },
                        -- shows the extension ( example: `.py`, `.c`, `.txt` ) of the file
                        { "filetype" },
                    },
                }
            })
        end,
    },
    -- for more asthetic visual when renaming file and more
    {
      'stevearc/dressing.nvim',
      event = "VeryLazy",
      config = function()
          require("dressing").setup({
              input = {
                  -- enable the plugin
                  enabled = true,
                  title_pos = "center",
                  start_in_insert = true,
                  border = "rounder",
                  relative = "cursor",
              }
          })
      end,
    },
    -- indent guide / indent blank lines plugin
    {
        "lukas-reineke/indent-blankline.nvim",
        -- lazy load on these 2 events
        -- when opening already existing file / a new file
        event = { "BufReadPre", "BufNewFile" },
        main = "ibl",
        opts = {
            indent = {
                -- specify a character to use for the indentation
                char = "¦",
            }
        },
    },
    -- todo-comments by mah BOI folke
    {
        "folke/todo-comments.nvim",
        -- lazy load on these 2 events
        -- when opening already existing file / a new file
        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local todo_comments = require("todo-comments")
            -- create a variable ( similar to keymaps.lua file )
            local keymap = vim.keymap -- for conciseness

            -- jump to next todo-comment
            keymap.set("n", "]t", function()
              todo_comments.jump_next()
            end, { desc = "Next todo comment" })
            -- jump to previous todo-comment
            keymap.set("n", "[t", function()
              todo_comments.jump_prev()
            end, { desc = "Previous todo comment" })
            -- call the setup function
            todo_comments.setup()
        end,
    }
}
