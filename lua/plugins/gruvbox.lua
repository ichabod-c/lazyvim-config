return {
  {
    "ellisonleao/gruvbox.nvim", -- Esempio di tema gruvbox
    lazy = false, -- Assicurati che venga caricato immediatamente
    priority = 1000, -- Imposta una priorità alta per il caricamento
    config = function()
      -- vim.cmd.colorscheme("gruvbox")
    end,
  },
}
