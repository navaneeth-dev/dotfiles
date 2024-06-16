return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
    opts = {},
    -- lazy = false,
    keys = {
        { "-", "<CMD>Oil<CR>", mode = "n", desc = "Open Oil" }
    },
}
