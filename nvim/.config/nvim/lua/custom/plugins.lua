local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"typescript", "lua", "prisma", "svelte", "tsx", "json", "vim", "html", "css"},
    },
  },
}
return plugins
