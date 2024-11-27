-- Establecer líder
vim.g.mapleader = " "

-- Atajos de teclado
local map = vim.api.nvim_set_keymap
map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true }) 	-- Mostrar el directorio de carpetas
map('n', '<leader>v', ':vsplit', { noremap = true, silent = true })	-- Dividir pantalla verticalmente
map('n', '<leader>t', ':split', { noremap = true, silent = true })	-- Comando para dividir y abrir la terminal

-- Terminal
-- Abrir terminal flotante con Ctrl+t
map('n', '<C-t>', ':ToggleTerm direction=float<CR>', { noremap = true, silent = true })
-- Abrir terminal horizontal con <leader>th
map('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
-- Abrir terminal vertical con <leader>tv
map('n', '<leader>tv', ':ToggleTerm direction=vertical<CR>', { noremap = true, silent = true })

-- Colores
map('n', '<leader>bl', ':lua vim.g.bluloco_theme = "light"; vim.cmd("colorscheme bluloco")<CR>', { noremap = true, silent = true })
map('n', '<leader>bd', ':lua vim.g.bluloco_theme = "dark"; vim.cmd("colorscheme bluloco")<CR>', { noremap = true, silent = true })

