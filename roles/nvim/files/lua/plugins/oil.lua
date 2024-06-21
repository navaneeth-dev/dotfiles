return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
    opts = {
        keymaps = {
            ["<C-p>"] = false,
        },
    },
    -- lazy = false,
    keys = {
        { "<leader>pv", "<CMD>Oil<CR>", mode = "n", desc = "Open Oil" }
    },
}
