--vim.cmd[[set t_Co=256]]
--vim.o.background = "dark"
--local colorscheme = "codedark"

--local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--if not status_ok then
--  vim.notify("colorscheme " .. colorscheme .. " not found!")
--  return
--end


-- Lua
require('onedark').setup {
    style = 'deep',
    transparent = true,

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
require('onedark').load()

-- vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
-- 
-- require("catppuccin").setup({
--   transparent_background = true,
-- 	dim_inactive = {
-- 		enabled = false,
-- 		shade = "dark",
-- 		percentage = 0.15,
-- 	},
-- })
-- 
-- vim.cmd [[colorscheme catppuccin]]
