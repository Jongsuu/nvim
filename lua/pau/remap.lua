-- <leader> is Space
vim.g.mapleader = " "

-- Open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move the selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Moves the line below up and don't move the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Navigate half page up or down and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Goes to next ocurrence of the pattern and center cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Pastes on the selection but doesn't copy the selection you pasted to
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copies to the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deletes the selection but doesn't copy the selection you pasted to
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Makes Ctrl + c act the same way Esc acts
vim.keymap.set("i", "<C-c>", "<Esc>")

-- unbind Q
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Resizing window splits
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +3<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -3<CR>")
vim.keymap.set("n", "<C-Up>", "<cmd>resize +3<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -3<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
