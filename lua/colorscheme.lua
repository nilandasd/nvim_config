--vim.cmd[[set t_Co=256]]
--vim.o.background = "dark"
--local colorscheme = "codedark"

--local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--if not status_ok then
--  vim.notify("colorscheme " .. colorscheme .. " not found!")
--  return
--end


-- Lua
-- require('onedark').setup {
--     style = 'deep'
-- }
-- require('onedark').load()

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  transparent_background = true,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
})

vim.cmd [[colorscheme catppuccin]]
