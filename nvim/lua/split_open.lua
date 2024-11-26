local M = {}

M.open_split = function(file)
  if not file then
    print("Archivo no especificado")
    return
  end
  vim.cmd("vsplit " .. file)
end

return M

