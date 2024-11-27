-- Cargar configuraciones generales
require('settings')      -- Configuraciones básicas como opciones de Neovim
require('keymaps')       -- Atajos de teclado personalizados
require('autocmds')      -- Autocomandos globales

-- Cargar y configurar plugins
require('plugins.packer') 	-- Gestor de plugins
-- require('plugins.tokyonight') 	-- Configuración específica para un plugin
-- require('plugins.telescope') 	-- Otro ejemplo de configuración
require('plugins.nvim-tree')
require('plugins.toggleterm')
require('plugins.colors')

-- Cargar módulos personalizados
require('split_open')     	-- Funciones personalizadas, como abrir divisiones

