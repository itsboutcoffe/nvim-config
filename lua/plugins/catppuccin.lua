-- Returning Catppuccin colorscheme to init.lua file using lazy

return
	{
		"catppuccin/nvim", 
		name = "catppuccin",
		priority = 1000,
		-- Calling the color scheme from catppuccin github config colorscheme
		config = function()
			vim.cmd.colorscheme "catppuccin"
		end
	}
