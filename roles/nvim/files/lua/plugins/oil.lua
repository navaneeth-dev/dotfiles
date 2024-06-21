return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
    opts = {
        view_options = {
            show_hidden = true,
        },
        keymaps = {
            ["<C-p>"] = false,
        },
    },
    -- lazy = false,
    keys = {
        { "<leader>pv", "<CMD>Oil<CR>", mode = "n", desc = "Open Oil" }
    },
}
