return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        backdrop = 1, -- Rimuove qualsiasi trasparenza (opzionale)
        width = 80, -- Larghezza fissa di 80 colonne
        height = 1, -- Altezza al 100% dello schermo
        options = {
          signcolumn = "no", -- Nasconde la colonna dei segni
          number = false, -- Disattiva i numeri di linea
          relativenumber = false, -- Disattiva i numeri relativi
          cursorline = false, -- Disattiva l'evidenziazione della riga del cursore
          cursorcolumn = false, -- Disattiva l'evidenziazione della colonna del cursore
          foldcolumn = "0", -- Nasconde la colonna dei fold
          list = false, -- Disattiva i caratteri invisibili
          colorcolumn = "", -- Rimuove la colonna di colore
        },
      },
      plugins = {
        twilight = { enabled = true }, -- Usa Twilight per oscurare il contesto circostante
        kitty = {
          enabled = true, -- Abilita il supporto per Kitty
          font = "+4", -- Incrementa la dimensione del font
        },
      },
      on_open = function()
        vim.cmd("set laststatus=0") -- Nasconde la barra di stato
        vim.cmd("set showtabline=0") -- Nasconde la barra delle tab
        vim.cmd("normal! zz") -- Centra la riga del cursore verticalmente
        vim.cmd("autocmd CursorMoved * normal! zz") -- Centra il testo mentre ci si muove
      end,
      on_close = function()
        vim.cmd("set laststatus=2") -- Ripristina la barra di stato
        vim.cmd("set showtabline=2") -- Ripristina la barra delle tab
        vim.cmd("autocmd! CursorMoved") -- Rimuove l'autocomando per evitare conflitti
      end,
    })
  end,
}
