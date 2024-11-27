-- lua/profiles/python.lua
local M = {}

function M.setup()
  -- Plugins específicos para Python
  vim.cmd("PackerLoad nvim-lspconfig") -- Cargar el plugin de LSP si es necesario
  require('lspconfig').pyright.setup {}

  -- Configuración de autocmds, keymaps y más
  vim.g.python3_host_prog = '/usr/bin/python3' -- Ruta al intérprete de Python
  vim.cmd("autocmd FileType python set tabstop=4 shiftwidth=4 expandtab")

  -- Mensaje de confirmación
  print("Entorno Python cargado")
end

return M

