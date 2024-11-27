-- lua/plugins/colors.lua

-- Configuración del esquema de colores
vim.opt.termguicolors = true  -- Habilitar soporte de colores en la terminal
vim.opt.background = "dark"  -- Usa "dark" o "light" según tu preferencia

local colorscheme = "bluloco"

-- Intenta cargar el esquema de colores
local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
  vim.notify("Colorescheme '" .. colorscheme .. "' no encontrado!", vim.log.levels.ERROR)
  return
end

