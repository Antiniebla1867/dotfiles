return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- 👈 importante: cargar antes que otros plugins
    config = function()
      require('kanagawa').setup {
        theme = 'dragon', -- 👈 aquí eliges dragon
      }

      vim.cmd 'colorscheme kanagawa-dragon'
    end,
  },
}
