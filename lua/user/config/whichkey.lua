local m = {
  -- Add bindings which show up as group name
  register = {
    -- first key is the mode, n == normal mode
    n = {
      -- second key is the prefix, <leader> prefixes
      ["<leader>"] = {
        -- third key is the key to bring up next level and its displayed
        -- group name in which-key top level menu
        ["e"] = { "<cmd>NvimTreeToggle<cr>", "Exploler" },
        ["n"] = { "<cmd>Neotree toggle<cr>", "Neotree Exploler" },
        ["b"] = { name = "Buffer" },
        ["l"] = {
          name = "LSP",
          f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
          M = { ":Mason<cr>", "Mason Install" },
        },
        ["r"] = {
          name = "Run",
          s = {
            '<cmd>autocmd bufwritepost [^_]*.sass,[^_]*.scss  silent exec "!sass %:p %:r.css"<CR>',
            "Auto Compile Sass",
          },
          r = { "<cmd>RunCode<CR>", "Run Code" },
          f = { "<cmd>RunFile<CR>", "Run File" },
          p = { "<cmd>RunProject<CR>", "Run Project" },
          g = { "<cmd>ToggleTerm size=70 direction=vertical<cr>gradle run<cr>", "Run Gradle" },
          m = {
            "<cmd>ToggleTerm size=70 direction=vertical<cr>mvn exec:java -Dexec.mainClass=com.pojokcode.App<cr>",
            "Run MVN",
          },
        },
        ["m"] = {
          name = "Markdown",
          p = { "<cmd>MarkdownPreview<cr>", "Preview" },
          s = { "<cmd>MarkdownPreviewStop<cr>", "Stop Preview" },
        },
      },
    },
  },
}
return m
