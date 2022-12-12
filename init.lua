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
vim.g.material_theme_style = "palenight-community"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
