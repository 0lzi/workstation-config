local M = {}

M.general = {
  n = { -- Navigate nvim windows with vim hjkl
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

 -- Show whitespace
    ["<leader>ll"] = { "<cmd> set list! <CR>", "Toggle whitespace"},

  }
}

return M
