-- init.lua

-- Configuración general
require('settings')

-- Atajos de teclado
require('keymaps')

-- Cargar plugins
require('plugins.packer') -- Cargar la configuración de Packer

-- Autocomandos
require('autocmds')

-- lua/lsp/init.lua
require('lspconfig')
require('lspconfig').pyright.setup{}  -- Configuración para Python
require('lspconfig').ts_ls.setup {}

-- lua/plugins/colors.lua
require('plugins.colors')

