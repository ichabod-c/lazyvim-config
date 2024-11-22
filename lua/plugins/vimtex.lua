return {
  {
    "lervag/vimtex",
    ft = { "tex" },
    config = function()
      -- Configura il visualizzatore PDF
      vim.g.vimtex_view_method = "zathura" -- Cambia con il visualizzatore PDF che usi
      vim.g.vimtex_view_general_viewer = "zathura"
      vim.g.vimtex_view_general_options = "--synctex-forward @line:@col:@tex @pdf"
      -- Configura latexmk per usare lualatex
      vim.g.vimtex_compiler_method = "latexmk" -- Usa latexmk come metodo di compilazione
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "", -- Puoi specificare una directory per i file di output, se necessario
        options = {
          "-pdf", -- Genera PDF
          "-pdflatex=lualatex", -- Usa lualatex come motore
          "-interaction=nonstopmode", -- Modalità di interazione
          "-synctex=1", -- Abilita SyncTeX per il forward/inverse search
        },
      }
    end,
  },
}
