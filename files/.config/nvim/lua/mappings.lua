require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map('n', '<leader>cc', ':lua vim.opt.colorcolumn = vim.opt.colorcolumn == "" and "80" or ""<CR>',
  { desc = "Toggle colorcolumn", noremap = true, silent = true })

-- Navigate nvim windows with vim hjkl
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up"})

-- Show Whitespaces
map("n", "<leader>ll", "<cmd> set list! <CR>", { desc = "Toggle Whitespaces"})

-- Lazy git
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Marp - Markdown presentations
map("n", "<leader>mt", "<cmd>MarpToggle<CR>", { desc = "Toggle Marp Server"})
map("n", "<leader>ms", "<cmd>MarpStatus<CR>", { desc = "Show Marp Server Status"})

-- Move Code Up/Down
--
-- Normal mode
map("n", "<A-j>", ":m .+1<CR>==", opts) -- Move current line/selection down
map("n", "<A-k>", ":m .-2<CR>==", opts) -- Move current line/selection up

-- Insert mode
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts) -- Move current line/selection down and return to Insert mode
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts) -- Move current line/selection up and return to Insert mode

-- Visual mode
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- Move selected block down
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- Move selected block up
