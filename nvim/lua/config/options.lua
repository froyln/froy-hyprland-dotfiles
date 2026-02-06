-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard = "unnamedplus"

-- Crea un grupo de comandos automáticos
local clear_term_group = vim.api.nvim_create_augroup("ClearTerm", { clear = true })

-- Cada vez que se abra una terminal (TermOpen)
vim.api.nvim_create_autocmd("TermOpen", {
  group = clear_term_group,
  callback = function()
    -- Espera 10 milisegundos para que cargue el fastfetch y luego limpia
    vim.defer_fn(function()
      vim.api.nvim_chan_send(vim.b.terminal_job_id, "clear\n")
    end, 10)
  end,
})
