-- lua/plugins/colors.lua

vim.g.bluloco_theme = "dark"       -- Configura el tema oscuro
vim.g.bluloco_transparent = false  -- Sin fondo transparente

-- Intenta cargar el esquema de colores
local status, _ = pcall(vim.cmd, "colorscheme bluloco")
if not status then
  vim.notify("Error al cargar el esquema de colores 'bluloco'", vim.log.levels.ERROR)
end

