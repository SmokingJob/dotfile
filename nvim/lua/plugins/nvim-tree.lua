require("nvim-tree").setup({
  view = {
    width = 30,              -- Ancho de la barra lateral
    side = "left",           -- Lado en el que aparece la barra
  },
  renderer = {
    highlight_opened_files = "all", -- Resaltar el archivo abierto
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true, -- Cierra el árbol al abrir un archivo
    },
  },
  git = {
    enable = true,         -- Muestra el estado de Git
    ignore = false,        -- Muestra archivos ignorados por .gitignore
  },
  on_attach = function(bufnr)
    -- Configurar teclas para navegar en el árbol
    local api = require("nvim-tree.api")

    -- Función de ayuda para asignar teclas
    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Mapas de teclas
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Abrir archivo o directorio'))
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Abrir archivo o directorio'))
    vim.keymap.set('n', 'o', api.node.open.edit, opts('Abrir archivo o directorio'))
    vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Cerrar directorio'))
    vim.keymap.set('n', '<C-r>', api.tree.reload, opts('Recargar árbol'))
  end,
})

