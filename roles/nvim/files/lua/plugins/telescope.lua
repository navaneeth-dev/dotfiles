return {
    {
        'nvim-telescope/telescope.nvim',
        commit = 'c392f1b78eaaf870ca584bd698e78076ed301b26',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fa', function()
                builtin.find_files({ prompt_prefix = "🔍", find_command = { "rg", "--no-ignore", "--hidden", "--files" } })
            end, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
            vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
            vim.keymap.set('n', '<leader>fm', builtin.marks, {})
            vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
        end
    },
}
