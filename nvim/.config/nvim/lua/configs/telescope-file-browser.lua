require("telescope").load_extension "file_browser"

vim.keymap.set("n", "<space>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
