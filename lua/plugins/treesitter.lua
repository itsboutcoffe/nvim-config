return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- Treesitter configuration
		local config = require("nvim-treesitter.configs")
		config.setup({
			--ensure_installed = {'markdown', 'markdown_inline', 'lua', 'java', 'javascript', 'c' , 'python'},
			auto_install = true,
			highlight = { enable= true },
			indent = { enable = true },
		})
	end,
}
