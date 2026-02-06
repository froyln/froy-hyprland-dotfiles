return {
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Opcional: dependencias para iconos
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        -- Aquí puedes personalizar si quieres ver archivos ocultos, etc.
        view_options = {
          show_hidden = true,
        },
      })

      -- Creamos el atajo de teclado para que funcione con "-" como en los dotfiles de Gentleman
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Abrir Oil (Gestor de archivos)" })
    end,
  },
}
