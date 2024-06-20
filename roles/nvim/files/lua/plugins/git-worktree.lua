return {
    'ThePrimeagen/git-worktree.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    keys = {
      { "<leader>gt", function ()
        require("git-worktree").switch_worktree("main")
      end},
    },
    config = function ()
        require("telescope").load_extension("git_worktree")
    end
}
