return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup {
			ensure_installed = { "javascript", "typescript", "lua","json", "tsx", "html", "css"},
			sync_install = false,
			auto_install = true,
			highlight = {enable = true,},
		}
	end
}
