local is_available = astronvim.is_available
local user_plugin_opts = astronvim.user_plugin_opts
local mappings = {
  n = {
    ["<leader>"] = {
      f = { name = "File" },
      p = { name = "Packages" },
      l = {
        name = "LSP",
        f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
        I = { "<cmd>Mason<cr>", "Mason Install" }
      },
      u = { name = "UI" },
      r = {
        name = "Run",
        r = { "<cmd>RunCode<CR>", "Run Code" },
        f = { "<cmd>RunFile<CR>", "Run File" },
        p = { "<cmd>RunProject<CR>", "Run Project" },
        g = { "<cmd>ToggleTerm size=70 direction=vertical<cr>gradle run<cr>", "Run Gradle" },
        m = { "<cmd>ToggleTerm size=70 direction=vertical<cr>mvn exec:java -Dexec.mainClass=com.pojokcode.App<cr>",
          "Run MVN" },
      },
      m = {
        name = "Markdown",
        p = { "<cmd>MarkdownPreview<cr>", "Preview" },
        s = { "<cmd>MarkdownPreviewStop<cr>", "Stop Preview" },
      }
    },
  },
}

local extra_sections = {
  g = "Git",
  s = "Search",
  S = "Session",
  t = "Terminal",
}

local function init_table(mode, prefix, idx)
  if not mappings[mode][prefix][idx] then mappings[mode][prefix][idx] = { name = extra_sections[idx] } end
end

if is_available "neovim-session-manager" then init_table("n", "<leader>", "S") end

if is_available "gitsigns.nvim" then init_table("n", "<leader>", "g") end

if is_available "toggleterm.nvim" then
  init_table("n", "<leader>", "g")
  init_table("n", "<leader>", "t")
end

if is_available "telescope.nvim" then
  init_table("n", "<leader>", "s")
  init_table("n", "<leader>", "g")
end

if is_available "Comment.nvim" then
  for _, mode in ipairs { "n", "v" } do
    if not mappings[mode] then mappings[mode] = {} end
    if not mappings[mode].g then mappings[mode].g = {} end
    mappings[mode].g.c = "Comment toggle linewise"
    mappings[mode].g.b = "Comment toggle blockwise"
  end
end

astronvim.which_key_register(user_plugin_opts("which-key.register", mappings))
