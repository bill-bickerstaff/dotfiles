-- Colorscheme
vim.o.background = "dark"

require("gruvbox").setup({
	overrides = {
		SignColumn = { bg = "#282828" },
	},
})
vim.cmd([[colorscheme gruvbox]])

vim.cmd([[set noruler]])
vim.cmd([[set laststatus=-]])
vim.cmd([[set noshowcmd]])
vim.cmd([[set noshowmode]])
vim.cmd([[set statusline=0]])

vim.cmd([[set cursorcolumn]])
vim.cmd([[set nowrap]])

-- Numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Mappings
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- Write
vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>W", ":wa<CR>")
vim.keymap.set("n", "<Leader>WQ", ":wqa<CR>")

-- Mason mappings
vim.keymap.set("n", "<Leader>m", ":Mason<CR>", { silent = true })

-- Oil
vim.keymap.set("n", "<Leader>o", ":Oil<CR>", { silent = true })

-- tmux
vim.keymap.set("n", "<Leader>t", ":Telescope tmux sessions<CR>", { silent = true })

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.fillchars = { eob = " " }

vim.cmd([[command! W :w]])
vim.cmd([[command! Q :q]])
vim.cmd([[command! Wa :wa]])
vim.cmd([[command! Qa :qa]])
vim.cmd([[command! WQa :wqa]])
vim.cmd([[command! Wqa :wqa]])
