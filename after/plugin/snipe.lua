local snipe = require("snipe")
snipe.setup()
vim.keymap.set("n", "<A-b>", snipe.toggle_buffer_menu())


