print("Sourced Init File")

--[[
	--- NOTES --
	
	As you know Neovim has a loading priority.
	The file `init.lua` is the ( main ) file that is first loaded when you start Neovim

	Now, there are 2 ways to make a Neovim Configuration:
	
	1. Single File Setup ( everything will be in the `init.lua` file )
	2. Structured File <--- I will be choosing this one; because its better and the norm

	This is what the structure should look like

		nvim
		├── init.lua
		└── lua
		   ├── config
		   └── plugins

	Now this file structure is typically found in:

	1. Unix / Linux Based Operating Sytems
	
		```bash
		# where 'nvim' is the main directory which contains all of the other files
		~/.config/nvim
		```

	2. Windows Operating Sytems

		```powershell
		# where 'nvim' is the main directory which contains all of the other files
		~\AppData\Local\nvim
		```
	Now if you really want to know where the configurations files should be kept ( under which directory ).
	You can run the following command in Neovim:

	```lua <--- need to ask someone if this is right or wrong
	echo stdpath('config')
	```

	I am currently using Linux ( I used Arch BTW ---> on my desktop ); I got the following path then I ran that ^ command

	```console
	/home/azmaan/.config/nvim
	```

	Hence, what I am trying to say is that we need to LOAD the `keymaps.lua` file file and then we will not have any problems
	with the leader key ( `mapleader` and `localmapleader` )
	
]]--

-- load keymaps file
require("config.keymaps")
-- load options file
require("config.options")
-- load lazy file
require("config.lazy")
-- for the moment I will configure the theme like this
vim.cmd.colorscheme("catppuccin")
-- load auto-commands file
require("config.autocmd")
