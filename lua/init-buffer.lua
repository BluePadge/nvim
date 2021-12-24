require('bufferline').setup()

-- Mappings for bufferline
vim.api.nvim_set_keymap(
  'n', 'gt', ':BufferLineCycleNext<CR>',
  {
    noremap = true,
    silent = true
  }
)

vim.api.nvim_set_keymap(
  'n', 'gT', ':BufferLineCyclePrev<CR>',
  {
    noremap = true,
    silent = true
  }
)
