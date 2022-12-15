--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
-- require ("user.lsp")
local status_ok, lsp_user = pcall(require, "user.lsp")
if not status_ok then
	return
end

-- require ("user.alpha")
-- require ("user.material-theme")
-- require ("user.dracula-config")

local config = {

  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "nightly", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "main", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_reload = false, -- automatically reload and sync packer after a successful update
    auto_quit = false, -- automatically quit the current session after a successful update
    -- remotes = { -- easily add new remotes to track
    --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
    --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
    --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    -- },
  },

  -- Set colorscheme to use
  colorscheme = "default_theme",
  -- colorscheme = "dracula",
  -- colorscheme = "material",

  -- Add highlight groups in any theme
  highlights = {
    -- init = { -- this table overrides highlights in all themes
    --   Normal = { bg = "#000000" },
    -- }
    -- duskfox = { -- a table of overrides/changes to the duskfox theme
    --   Normal = { bg = "#000000" },
    -- },
  },

  -- set vim options here (vim.<first_key>.<second_key> = value)
  options = {
    opt = {
      -- set to true or false etc.
      -- relativenumber = true, -- sets vim.opt.relativenumber
      -- number = true, -- sets vim.opt.number
      -- spell = true, -- sets vim.opt.spell
      -- signcolumn = "auto", -- sets vim.opt.signcolumn to auto
      wrap = true, -- sets vim.opt.wrap
      guifont = "Source Code Pro:h17:w3",
    },
    g = {
      -- ini config untuk neovide
      neovide_floating_blur_amount_x = 2.0,
      neovide_floating_blur_amount_y = 2.0,
      neovide_transparency = 1,
      neovide_underline_automatic_scaling = false,
      neovide_refresh_rate = 60,
      neovide_refresh_rate_idle = 5,
      neovide_confirm_quit = true,
      neovide_remember_window_size = true,
      neovide_cursor_vfx_mode = "ripple",
      neovide_scale_factor = 1.0,
      -- end config neovide
      mapleader = " ", -- sets vim.g.mapleader
      autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
      cmp_enabled = true, -- enable completion at start
      autopairs_enabled = true, -- enable autopairs at start
      diagnostics_enabled = true, -- enable diagnostics at start
      status_diagnostics_enabled = true, -- enable diagnostics in statusline
      icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
      ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    },
  },
  -- If you need more control, you can use the function()...end notation
  -- options = function(local_vim)
  --   local_vim.opt.relativenumber = true
  --   local_vim.g.mapleader = " "
  --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  --
  --   return local_vim
  -- end,

  -- Set dashboard header
  header = {
    [[                                      GGG              ]],
    [[                                     #GGG              ]],
    [[    &BBGBB      &#G#&GB&        &BBB##GGG    &#BGBB#&  ]],
    [[   BGGGB##  &#GP555& P555GB&   #GGG##GGGG   #GGB&&BGG# ]],
    [[  &GGG&    G555GB&    &#G5Y5P  BGGB  #GGG   GGGB  #GGG ]],
    [[  &GGG&    G555GB&    &#G555P  BGGB  #GGG   GGG#       ]],
    [[   BGGGBBB  &#GP5Y5& P555G#&   #GGGB#GGGG   #GGB&&#BB# ]],
    [[    &BBBB#      &#G#&GB&        &BBB##BBB    &#BBBB#&  ]],
  },

  -- Default theme configuration
  default_theme = {
    -- Modify the color palette for the default theme
    colors = {
      fg = "#abb2bf",
      bg = "#1e222a",
    },
    highlights = function(hl) -- or a function that returns a new table of colors to set
      local C = require "default_theme.colors"

      hl.Normal = { fg = C.fg, bg = C.bg }

      -- New approach instead of diagnostic_style
      hl.DiagnosticError.italic = true
      hl.DiagnosticHint.italic = true
      hl.DiagnosticInfo.italic = true
      hl.DiagnosticWarn.italic = true

      return hl
    end,
    -- enable or disable highlighting for extra plugins
    plugins = {
      aerial = true,
      beacon = false,
      bufferline = true,
      cmp = true,
      dashboard = true,
      highlighturl = true,
      hop = false,
      indent_blankline = true,
      lightspeed = false,
      ["neo-tree"] = true,
      notify = true,
      ["nvim-tree"] = false,
      ["nvim-web-devicons"] = true,
      rainbow = true,
      symbols_outline = false,
      telescope = true,
      treesitter = true,
      vimwiki = false,
      ["which-key"] = true,
    },
  },

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    --virtual_text = true,
    --underline = false,
  },

  -- Extend LSP configuration
  lsp = {
    skip_setup = { "clangd" },
    ["server-settings"] = {
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
    },
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
    mappings = {
      n = {
        -- ["<leader>lf"] = false -- disable formatting keymap
      },
    },
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
    },
  },

  -- Mapping data with "desc" stored directly by vim.keymap.set().
  --
  -- Please use this mappings table to set keyboard mapping since this is the
  -- lower level configuration and more robust one. (which-key will
  -- automatically pick-up stored data by this setting.)
  mappings = {
    -- first key is the mode
    
    -- Mapping AKN
    -- Move text up and down  
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
      ["<A-j>"] = { ":m .+1<CR>==", desc = "move" },
      ["<A-k>"] = { ":m .-2<CR>==", desc = "" },
      ["p"] = { '"_dP', desc = "" },
      ["<c-c>"] = { '"+y', desc = "" },
      ["<c-v>"] = { '"+p', desc = "" },
      ["J"] = { ":move '>+1<CR>gv-gv", desc = "" },
      ["K"] = { ":move '<-2<CR>gv-gv", desc = "" },
      ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "" },
      ["<A-Down>"] = { ":move '>+1<CR>gv-gv", desc = "" },
      ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "" },
      ["<A-Up>"] = { ":move '<-2<CR>gv-gv", desc = "" },
      ["<S-Down>"] = { ":'<,'>t'><cr>", desc = "" },
    },
    n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
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
  },

  -- Configure plugins
  plugins = {
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
        config = function()
          require("user.coderunner")
        end,
      },
      ["folke/tokyonight.nvim"] = {},
      -- ["ziontee113/color-picker.nvim"] = {
      --   config = function()
      --     require("color-picker")
      --   end
      -- },
      ["glepnir/oceanic-material"] = {},
      ["marko-cerovac/material.nvim"] = {
        config = function()
          require("user.material-theme")
        end,
      },
      ["iamcco/markdown-preview.nvim"] = {
        config = function()
          require("user.markdown-config")
        end,
      },
      ["williamboman/nvim-lsp-installer"] = {},
      ["Mofiqul/dracula.nvim"] = {},
    },
    -- All other entries override the require("<key>").setup({...}) call for default plugins
    ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
      -- config variable is the default configuration table for the setup function call
      -- local null_ls = require "null-ls"

      -- Check supported formatters and linters
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
      config.sources = {
        -- Set a formatter
        --null_ls.builtins.formatting.stylua,
        --null_ls.builtins.formatting.prettier,
      }
      return config -- return final config table
    end,
    treesitter = { -- overrides `require("treesitter").setup(...)`
      -- ensure_installed = { "lua" },
    },
    -- use mason-lspconfig to configure LSP installations
    ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
      -- ensure_installed = { "sumneko_lua" },
      ensure_installed = { },
    },
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
      -- ensure_installed = { "prettier", "stylua" },
    },
    ["mason-nvim-dap"] = { -- overrides `require("mason-nvim-dap").setup(...)`
      -- ensure_installed = { "python" },
    },
  },

  -- LuaSnip Options
  luasnip = {
    -- Extend filetypes
    filetype_extend = {
      -- javascript = { "javascriptreact" },
    },
    -- Configure luasnip loaders (vscode, lua, and/or snipmate)
    vscode = {
      -- Add paths for including more VS Code style snippets in luasnip
      paths = {
        vim.fn.stdpath("config") .. "/my-snippets" 
      },
    },
  },

  -- CMP Source Priorities
  -- modify here the priorities of default cmp sources
  -- higher value == higher priority
  -- The value can also be set to a boolean for disabling default sources:
  -- false == disabled
  -- true == 1000
  -- cmp = {
  --   source_priority = {
  --     nvim_lsp = 1000,
  --     luasnip = 750,
  --     buffer = 500,
  --     path = 250,
  --   },
  -- },
  

  -- Modify which-key registration (Use this with mappings table in the above.)
  ["which-key"] = {
    -- Add bindings which show up as group name
    register = {
      -- first key is the mode, n == normal mode
      n = {
        -- second key is the prefix, <leader> prefixes
        ["<leader>"] = {
          -- third key is the key to bring up next level and its displayed
          -- group name in which-key top level menu
          ["b"] = { name = "Buffer" },
          ["l"] = {
            name = "LSP",
            f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
            I = { "<cmd>Mason<cr>", "Mason Install" }
          },
          ["r"] = {
            name = "Run",
            r = { "<cmd>RunCode<CR>", "Run Code" },
            f = { "<cmd>RunFile<CR>", "Run File" },
            p = { "<cmd>RunProject<CR>", "Run Project" },
            g = { "<cmd>ToggleTerm size=70 direction=vertical<cr>gradle run<cr>", "Run Gradle" },
            m = { "<cmd>ToggleTerm size=70 direction=vertical<cr>mvn exec:java -Dexec.mainClass=com.pojokcode.App<cr>",
              "Run MVN" },
          },
          ["m"] = {
            name = "Markdown",
            p = { "<cmd>MarkdownPreview<cr>", "Preview" },
            s = { "<cmd>MarkdownPreviewStop<cr>", "Stop Preview" },
          }
        },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}

return config

