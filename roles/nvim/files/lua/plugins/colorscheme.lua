return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin-mocha"
    end
}


-- return {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     opts = {},
--     config = function ()
--         vim.cmd("colorscheme rose-pine")
--     end
-- }
