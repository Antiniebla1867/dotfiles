return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'kanagawa',
          icons_enabled = vim.g.have_nerd_font,
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
      }
    end,
  },
}
