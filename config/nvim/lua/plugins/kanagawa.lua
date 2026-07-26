return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,
      dimInactive = false,
      terminalColors = true,

      colors = {
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {},
        },
      },

      overrides = function(colors)
        return {
          Normal = { bg = "none" },
          NormalNC = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          SignColumn = { bg = "none" },
          EndOfBuffer = { bg = "none" },

          LazyNormal = { link = "Normal" },
          LazyBackdrop = { bg = "none" },

          SnacksPicker = { link = "Normal" },

          SnacksPickerInput = { link = "Normal" },
          SnacksPickerInputBorder = { link = "FloatBorder" },

          SnacksPickerList = { link = "Normal" },
          SnacksPickerListBorder = { link = "FloatBorder" },

          SnacksPickerPreview = { link = "Normal" },
          SnacksPickerPreviewBorder = { link = "FloatBorder" },

          SnacksPickerBox = { link = "Normal" },
          SnacksPickerBoxBorder = { link = "FloatBorder" },
        }
      end,

      theme = "wave",

      background = {
        dark = "dragon",
        light = "lotus",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
