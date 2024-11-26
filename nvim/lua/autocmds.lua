-- Autocomandos
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.lua',
  command = 'source %',
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = 'packer.lua',
  command = 'source <afile> | PackerCompile',
})

