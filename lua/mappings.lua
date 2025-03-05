require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>df", function()
  vim.diagnostic.open_float()
end, { noremap = true, silent = true, desc = "Show diagnostic float" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
