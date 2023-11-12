-- Vim options
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.wrap = false

vim.wo.relativenumber = true

vim.o.hlsearch = false

vim.o.scrolloff = 8

-- Key remaps
vim.keymap.set("v", "<leader>p", "\"_dP", { remap = true })
vim.keymap.set("n", "<leader>nt", "<Cmd>Neotree toggle<CR>", { remap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
vim.keymap.set("n", "<leader>vd", "<cmd>Gitsigns diffthis<CR>")
