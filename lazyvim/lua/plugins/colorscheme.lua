return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
 { "Mofiqul/dracula.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  }
}
