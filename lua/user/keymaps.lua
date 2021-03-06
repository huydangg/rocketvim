local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Normal
-- Remap space as leader key
keymap("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Bufferline
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)

-- Nvim tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Insert
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)


--Visual
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Telescope
keymap("n", "<C-p>", ":Telescope find_files no_ignore=true<CR>", opts)
keymap("n", "<C-g>", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>th", ":lua require'telescope.builtin'.colorscheme(require('telescope.themes').get_dropdown{})<CR>",
	opts)

--Gitsigns
keymap("n", "<leader>b", ":Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>d", ":Gitsigns diffthis<CR>", opts)

--ToogleTerm
keymap("n", "<leader>g", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })
