local colorscheme = "onedarkpro"
vim.o.background = "dark" -- to load onedark

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

