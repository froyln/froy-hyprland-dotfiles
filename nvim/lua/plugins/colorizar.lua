return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      -- El asterisco activa el plugin en todos los archivos
      "*",
    }, {
      -- OPCIONES GLOBALES
      RGB = true, -- Colores #RGB
      RRGGBB = true, -- Colores #RRGGBB
      names = true, -- Nombres como "Blue", "Red"
      RRGGBBAA = true, -- <--- ESTA ES LA QUE NECESITAS para #000000FF
      rgb_fn = true, -- Funciones CSS rgb()
      hsl_fn = true, -- Funciones CSS hsl()
      css = true, -- Habilita todos los formatos de CSS
      css_fn = true, -- Habilita funciones de CSS
    })
  end,
}
