-- Vim options
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.wrap = false

vim.wo.relativenumber = true

vim.o.hlsearch = false

vim.o.scrolloff = 8

vim.opt.swapfile = false

-- Key remaps

-- Delete highlighted into the void and paste over
vim.keymap.set("v", "<leader>p", "\"_dP", { remap = true })

-- Delete into the void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>nt", "<Cmd>Neotree toggle<CR>", { remap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format()
end)

-- Keeps cursor in middle when page jumping up and down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Keeps cursor in the middle when jumping to next search term
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace the current word I am on
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]],
	{ desc = "Replace current word" })

vim.keymap.set("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle git blame current line" })
vim.keymap.set("n", "<leader>vd", "<cmd>Gitsigns diffthis<CR>", { desc = "Vertical Git diff" })
