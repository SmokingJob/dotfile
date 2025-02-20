-- lua/plugins/packer.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer puede gestionarse a sí mismo
  use 'wbthomason/packer.nvim'

  -- Ejemplo de plugins útiles
  use 'nvim-lua/plenary.nvim'             -- Biblioteca auxiliar
  use 'nvim-telescope/telescope.nvim'     -- Finder de archivos
  use 'nvim-tree/nvim-tree.lua'           -- Explorador de archivos
  use 'nvim-treesitter/nvim-treesitter'   -- Mejor resaltado de sintaxis
  use 'neovim/nvim-lspconfig'             -- Configuración de LSP
  use 'hrsh7th/nvim-cmp'                  -- Autocompletado
  use 'uloco/bluloco.nvim'                -- Esquema de colores
end)

