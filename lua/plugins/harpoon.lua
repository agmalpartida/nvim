return {
	"ThePrimeagen/harpoon",
	lazy = false,
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				ui_width_ratio = 0.4,
			},
		})

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end)
		vim.keymap.set("n", "<leader>e", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		vim.keymap.set("n", "<leader>0", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<leader>9", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(4)
		end)
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
}
