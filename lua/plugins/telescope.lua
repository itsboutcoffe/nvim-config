return
	{
		{
	    	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	    	dependencies ={'nvim-lua/plenary.nvim'},
		 
			config = function()
				-- Telescope Setting
				local builtin = require("telescope.builtin")
				vim.keymap.set( 'n' , '<leader>f' , builtin.find_files , {} )
				vim.keymap.set( 'n' , '<leader>g' , builtin.live_grep ,  {} )
				--vim.keymap.set( 'n' , '<leader>b' , builtin.buffers,	 {} )
				--vim.keymap.set( 'n' , '<leader>h' , builtin.help_tags,	 {} )
			end
		},

		{
			"nvim-telescope/telescope-ui-select.nvim",
			config = function()
				-- This is your opts table
				require("telescope").setup({
					extensions = {
					["ui-select"] = {
				      require("telescope.themes").get_dropdown {
				        -- even more opts
				      }
			    	}
				  }
				})
				-- To get ui-select loaded and working with telescope, you need to call
				-- load_extension, somewhere after setup function:
				require("telescope").load_extension("ui-select")
			end
		},
	}
