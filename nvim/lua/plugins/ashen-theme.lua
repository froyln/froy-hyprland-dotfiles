return {
  -- 1. Configuración de Ashen
  {
    "ficd0/ashen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local function transparent_ashen()
        local hl_groups = {
          "Normal",
          "NormalNC",
          "SignColumn",
          "MsgArea",
          "EndOfBuffer",
          "NormalFloat",
          "FloatBorder",
          "LineNr",
          "CursorLineNr", -- Los números de línea
          "StatusLine",
          "StatusLineNC", -- La barra de abajo
          "WinBar",
          "WinBarNC", -- Si usas barras superiores en ventanas
          "FoldColumn",
          "Folded", -- Para las zonas de plegado de código
        }
        for _, group in ipairs(hl_groups) do
          vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
        end

        -- Truco especial para Lualine (la barra de "NORMAL/VISUAL")
        -- Esto fuerza a que el fondo de la barra de estado también sea transparente
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "ashen",
        callback = transparent_ashen,
      })

      vim.cmd([[colorscheme ashen]])
    end,
  },

  -- 2. Configurar LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ashen",
    },
  },
}
