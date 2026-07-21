return {
  { "tpope/vim-sensible" },
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  { "tpope/vim-commentary" },
  { "tpope/vim-fugitive" },

  {
    "airblade/vim-gitgutter",
    init = function()
      vim.g.gitgutter_enabled = 1
      vim.g.gitgutter_sign_added = "+"
      vim.g.gitgutter_sign_modified = "~"
      vim.g.gitgutter_sign_removed = "-"
      vim.g.gitgutter_sign_removed_first_line = "‾"
      vim.g.gitgutter_sign_modified_removed = "≋"
      vim.g.gitgutter_sign_width = 1
      vim.g.gitgutter_sign_priority = 10
      vim.g.gitgutter_highlight_lines = 1
      vim.g.gitgutter_realtime = 1
      vim.g.gitgutter_eager = 1
    end,
  },
  {
    "Chiel92/vim-autoformat",
    init = function()
      vim.g.formatprg_clang_format = "clang-format"
      vim.g.autoformat_on_save = 0
    end,
  },
  {
    "jiangmiao/auto-pairs",
    init = function()
      vim.g.AutoPairsParensSquare = 1
      vim.g.AutoPairsParensCurly = 1
      vim.g.AutoPairsMultilineClose = 1
    end,
  },

  {
    "junegunn/fzf",
    build = "./install --all",
  },
  {
    "junegunn/fzf.vim",
    init = function()
      vim.g.fzf_layout = { down = "~40%" }
      vim.g.fzf_buffers_jump = 1
      vim.g.fzf_history_dir = vim.fn.stdpath("config") .. "/tmp/fzf-history"
    end,
  },

  {
    "catppuccin/vim",
    name = "catppuccin",
    branch = "main",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin_mocha")
    end,
  },

  {
    "vim-airline/vim-airline",
    init = function()
      vim.g.airline_powerline_fonts = 1
      vim.g.airline_theme = "catppuccin_mocha"
      vim.g["airline#extensions#tabline#enabled"] = 1
      vim.g["airline#extensions#tabline#fnamemod"] = ":t"
      vim.g["airline#extensions#branch#enabled"] = 1
      vim.g.airline_detect_paste = 1
      vim.g.airline_detect_spell = 1
      vim.g.airline_detect_iminsert = 1
    end,
  },
  { "vim-airline/vim-airline-themes" },
}
