return {
  "folke/twilight.nvim", -- Plugin per mettere a fuoco il contenuto
  config = function()
    require("twilight").setup({
      dimming = {
        alpha = 0.25, -- Oscurità del contesto circostante
      },
      context = 10, -- Mostra 10 linee intorno al cursore
    })
  end,
}
