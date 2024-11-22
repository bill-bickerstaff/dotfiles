return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)

		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)

		harpoon:extend({
			UI_CREATE = function(cx)
				vim.keymap.set("n", "l", function()
					harpoon.ui:select_menu_item()
				end, { buffer = cx.bufnr })

				vim.keymap.set("n", "<C-l>", function()
					harpoon.ui:select_menu_item({ vsplit = true })
				end, { buffer = cx.bufnr })
			end,
		})
	end,
}
