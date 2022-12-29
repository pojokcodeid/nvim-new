local m = {
  --skip_setup = { "clangd", "jdtls" },
  skip_setup = { "clangd" },
  -- enable servers that you already have installed without mason
  servers = {
    -- "pyright"
  },

  formatting = {
    -- control auto formatting on save
    format_on_save = {
      enabled = true, -- enable or disable format on save globally
      allow_filetypes = { -- enable format on save for specified filetypes only
        -- "go",
      },
      ignore_filetypes = { -- disable format on save for specified filetypes
        -- "python",
      },
    },
    disabled = { -- disable formatting capabilities for the listed language servers
      -- "sumneko_lua",
    },
    timeout_ms = 1000, -- default format timeout
    -- filter = function(client) -- fully override the default formatting function
    --   return true
    -- end
  },
  -- easily add or disable built in mappings added during LSP attaching
  -- mappings = {
  --   n = {
  --     -- ["<leader>lf"] = false -- disable formatting keymap
  --   },
  -- },
  -- add to the global LSP on_attach function
  -- on_attach = function(client, bufnr)
  -- end,

  -- override the mason server-registration function
  -- server_registration = function(server, opts)
  --   require("lspconfig")[server].setup(opts)
  -- end,

  -- Add overrides for LSP server settings, the keys are the name of the server
  ["server-settings"] = {
    -- example for addings schemas to yamlls
    -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
    --   settings = {
    --     yaml = {
    --       schemas = {
    --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
    --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
    --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
    --       },
    --     },
    --   },
    -- },
    clangd = {
      capabilities = {
        offsetEncoding = "utf-8",
      },
    },
    --   jdtls = function()
    --     -- use this function notation to build some variables
    --     local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
    --     local root_dir = require("jdtls.setup").find_root(root_markers)
    --
    --     -- calculate workspace dir
    --     local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    --     local workspace_dir = vim.fn.stdpath "data" .. "/site/java/workspace-root/" .. project_name
    --     os.execute("mkdir " .. workspace_dir)
    --
    --     -- get the mason install path
    --     local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
    --
    --     -- get the current OS
    --     local os
    --     if vim.fn.has "macunix" then
    --       os = "mac"
    --     elseif vim.fn.has "win32" then
    --       os = "win"
    --     else
    --       os = "linux"
    --     end
    --
    --     -- return the server config
    --     return {
    --       cmd = {
    --         "java",
    --         "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    --         "-Dosgi.bundles.defaultStartLevel=4",
    --         "-Declipse.product=org.eclipse.jdt.ls.core.product",
    --         "-Dlog.protocol=true",
    --         "-Dlog.level=ALL",
    --         "-javaagent:" .. install_path .. "/lombok.jar",
    --         "-Xms1g",
    --         "--add-modules=ALL-SYSTEM",
    --         "--add-opens",
    --         "java.base/java.util=ALL-UNNAMED",
    --         "--add-opens",
    --         "java.base/java.lang=ALL-UNNAMED",
    --         "-jar",
    --         vim.fn.glob(install_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
    --         "-configuration",
    --         install_path .. "/config_" .. os,
    --         "-data",
    --         workspace_dir,
    --       },
    --       root_dir = root_dir,
    --     }
    --   end,
  },
}
return m
