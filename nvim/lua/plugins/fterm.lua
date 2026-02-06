return {
  {
    "numToStr/FTerm.nvim",
    config = function()
      require("FTerm").setup({
        border = "rounded", -- Puedes usar 'single', 'double', 'rounded' o 'solid'
        dimensions = {
          height = 0.8, -- 80% de la pantalla
          width = 0.8, -- 80% de la pantalla
        },
      })

      -- Crear el atajo de teclado para abrir/cerrar
      -- Usaremos Alt + i (muy común para FTerm), pero puedes cambiarlo
      vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
      vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    end,
  },
}
