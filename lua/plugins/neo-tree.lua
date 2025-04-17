return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?

	config = function()
		-- Neo-tree keybindings
		-- opening
		vim.keymap.set("n", "<leader>e", ":Neotree source=filesystem reveal=true position=left<CR>")

		-- closing
		vim.keymap.set("n", "<leader>c", ":Neotree close <CR>")
	end,
}
