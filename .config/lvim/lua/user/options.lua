-- Options
lvim.format_on_save.enabled = true
lvim.colorscheme = 'tokyonight'

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.norg" },
  command = "set conceallevel=3"
})
