local telescope = require("telescope")
local action_layout = require("telescope.actions.layout")
telescope.setup({
    defaults = {
        borderchars = { "═", "║", "═", "║", "╔", "╗", "╝", "╚" },
        mappings = {
            n = {
                ["<M-p>"] = action_layout.toggle_preview
            },
            i = {
                ["<M-p>"] = action_layout.toggle_preview
            },
        },
    },
    extensions = {
        media_files = {
            filetypes = { "png", "webp", "jpg", "jpeg" },
            find_cmd = "rg",
        },
    },
})
telescope.load_extension("media_files")

local opt = { noremap = true, silent = true }
-- mappings
vim.keymap.set("n", "<Leader>sf", require("telescope.builtin").find_files, opt)
vim.keymap.set("n", "<Leader>sg", require("telescope.builtin").live_grep, opt)
vim.keymap.set("n", "<Leader>sb", require("telescope.builtin").buffers, opt)
vim.keymap.set("n", "<Leader>sh", require("telescope.builtin").help_tags, opt)
vim.keymap.set("n", "<Leader>sp", require("telescope").extensions.media_files.media_files, opt)
