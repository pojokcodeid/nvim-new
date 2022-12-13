local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
  impatient.enable_profile()
end

for _, source in ipairs({
  "core.utils",
  "core.options",
  "core.bootstrap",
  "core.diagnostics",
  "core.autocmds",
  "core.mappings",
  "configs.which-key-register",
  "configs.coderunner",
  "configs.lsp.configs",
  "configs.snip",
  "configs.material-theme",
}) do
  local status_ok, fault = pcall(require, source)
  if not status_ok then
    vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
  end
end

astronvim.conditional_func(astronvim.user_plugin_opts("polish", nil, false))

if vim.fn.has("nvim-0.8") ~= 1 or vim.version().prerelease then
  vim.schedule(function()
    astronvim.notify("Unsupported Neovim Version! Please check the requirements", "error")
  end)
end

-- local colorscheme = "dracula"
-- local colorscheme = "tokyonight-storm"
local colorscheme = "default_theme"
-- local colorscheme = "gruvbox-flat"
-- local colorscheme = "oceanic_material"
-- local colorscheme = "material"

vim.g.oceanic_material_transparent_background = 1
vim.g.oceanic_material_allow_underline = 0
vim.g.oceanic_material_allow_undercurl = 0

-- vim.g.material_theme_style = "palenight-community"
-- vim.g.material_transparent_background = 1

-- vim.g.material_style = "deep ocean"
vim.g.material_style = "darker"
-- vim.g.material_style = "palenight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
