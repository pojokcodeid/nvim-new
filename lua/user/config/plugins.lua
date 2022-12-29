local m = {
  init = {
    -- You can disable default plugins as follows:
    -- ["goolord/alpha-nvim"] = { disable = true },

    -- You can also add new plugins here as well:
    -- Add plugins, the packer syntax without the "use"
    -- { "andweeb/presence.nvim" },
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },

    -- We also support a key value style plugin definition similar to NvChad:
    -- ["ray-x/lsp_signature.nvim"] = {
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    --add by akn
    -- ["mfussenegger/nvim-jdtls"] = { module = "jdtls" }, -- load jdtls on module
    {
      "p00f/clangd_extensions.nvim",
      after = "mason-lspconfig.nvim", -- make sure to load after mason-lspconfig
      config = function()
        require("clangd_extensions").setup {
          server = astronvim.lsp.server_settings "clangd",
        }
      end,
    },
    ["manzeloth/live-server"] = {},
    ["mg979/vim-visual-multi"] = {},
    ["CRAG666/code_runner.nvim"] = {
      config = function() require "user.config.coderunner" end,
    },
    -- ini untuk color scheme
    ["folke/tokyonight.nvim"] = {
      config = function() require "user.colorscheme.tokyonight-config" end,
    },
    ["glepnir/oceanic-material"] = {},
    ["Mofiqul/dracula.nvim"] = {},
    ["arcticicestudio/nord-vim"] = {},
    -- ["ziontee113/color-picker.nvim"] = {
    --   config = function()
    --     require("color-picker")
    --   end
    -- },
    ["iamcco/markdown-preview.nvim"] = {
      config = function() require "user.config.markdown-config" end,
    },
    ["williamboman/nvim-lsp-installer"] = {},
    ["nvim-tree/nvim-web-devicons"] = {
      config = function() require "user.config.webdevicons" end,
    },
    ["kyazdani42/nvim-tree.lua"] = {
      config = function() require "user.config.nvim-tree" end,
    },
  },
  ["cmp"] = function() require "user.config.cmp" end,
  -- ["nvim-web-devicons"] = function() require "user.config.webdevicons" end,
  -- All other entries override the require("<key>").setup({...}) call for default plugins
  ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
  -- use mason-lspconfig to configure LSP installations
  ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
    -- ensure_installed = { "sumneko_lua" },
    ensure_installed = { "jdtls" },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
    -- ensure_installed = { "prettier", "stylua" },
  },
  ["mason-nvim-dap"] = { -- overrides `require("mason-nvim-dap").setup(...)`
    -- ensure_installed = { "python" },
  },
}

return m
