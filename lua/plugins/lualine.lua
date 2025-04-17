return
{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup{
				options = {
					--theme = 'dracula'
					--theme = 'evil_lualine'
					theme = 'horizon'
				}
			}
		end
}
