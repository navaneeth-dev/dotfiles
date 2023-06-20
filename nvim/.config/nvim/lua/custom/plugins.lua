local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"typescript", "lua", "prisma", "svelte", "tsx", "json", "vim", "html", "css"},
    },
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
}
return plugins
