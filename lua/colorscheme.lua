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
    style = 'deep'
}
require('onedark').load()
