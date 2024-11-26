-- Establecer líder
vim.g.mapleader = " "

-- Atajos de teclado
local map = vim.api.nvim_set_keymap
map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true }) 	-- Mostrar el directorio de carpetas
map('n', '<leader>v', ':vsplit | terminal<CR>', { noremap = true, silent = true })	-- Dividir pantalla verticalmente
map('n', '<leader>t', ':split | terminal<CR>', { noremap = true, silent = true })	-- Comando para dividir y abrir la terminal
