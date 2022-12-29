local m = {
  i = {
    ["<c-c>"] = { '"+y', desc = "" },
    ["<c-v>"] = { "<c-r>+", desc = "" },
    ["<S-Down>"] = { "<cmd>t.<cr>", desc = "" },
    ["<M-Down>"] = { "<cmd>m+<cr>", desc = "" },
    ["<S-Up>"] = { "<cmd>t -1<cr>", desc = "" },
    ["<M-Up>"] = { "<cmd>m-2<cr>", desc = "" },
    ["<C-s>"] = { "<cmd>w<cr>", desc = "" },
    ["<C-l>"] = { "<cmd>LiveServer start<cr><cr>", desc = "" },
    ["<C-f>"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Format File" },
  },
  v = {
    ["<C-]>"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment line",
    },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "move" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "" },
    ["p"] = { '"_dP', desc = "" },
    ["<c-c>"] = { '"+y', desc = "" },
    ["<c-v>"] = { '"+p', desc = "" },
    ["J"] = { ":move '>+1<CR>gv-gv", desc = "" },
    ["K"] = { ":move '<-2<CR>gv-gv", desc = "" },
    -- ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "" },
    ["<A-Down>"] = { ":move '>+1<CR>gv-gv", desc = "" },
    -- ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "" },
    ["<A-Up>"] = { ":move '<-2<CR>gv-gv", desc = "" },
    ["<S-Down>"] = { ":'<,'>t'><cr>", desc = "" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<C-]>"] = { function() require("Comment.api").toggle.linewise.current() end, desc = "Comment line" },
    ["<c-c>"] = { '"+y', desc = "" },
    ["<c-v>"] = { '"+p', desc = "" },
    ["<S-Down>"] = { "<cmd>t.<cr>", desc = "" },
    ["<S-Up>"] = { "<cmd>t -1<cr>", desc = "" },
    ["<M-J>"] = { "<cmd>t.<cr>", desc = "" },
    ["<M-K>"] = { "<cmd>t -1<cr>", desc = "" },
    ["<M-Down>"] = { "<cmd>m+<cr>", desc = "" },
    ["<M-Up>"] = { "<cmd>m-2<cr>", desc = "" },
    ["<M-j>"] = { "<cmd>m+<cr>", desc = "" },
    ["<M-k>"] = { "<cmd>m-2<cr>", desc = "" },
    ["<C-f>"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Format File" },
    ["q"] = { "<cmd>q<cr>", desc = "" },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
return m
