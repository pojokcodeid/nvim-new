--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
-- require ("user.lsp")
-- local status_ok, lsp_user = pcall(require, "user.lsp")
-- if not status_ok then return end

-- require ("user.alpha")
-- require ("user.colorscheme.material-theme")
-- require ("user.colorscheme.dracula-config")
-- require "user.lsp"
--local status_ok, colorscheme_local = pcall(require, "user.colorscheme.tokyonight-config")
--if not status_ok then return end
--require "user.colorscheme.tokyonight-config"
-- if vim.g.vscode then

--   -- Folding
--   vim.keymap.set("n", "za", function() vim.fn.VSCodeNotify("editor.toggleFold") end)
--   vim.keymap.set("n", "zc", function() vim.fn.VSCodeNotify("editor.foldRecursively") end)
--   vim.keymap.set("n", "zC", function() vim.fn.VSCodeNotify("editor.foldAll") end)
--   vim.keymap.set("n", "zO", function() vim.fn.VSCodeNotify("editor.unfoldAll") end)
--   vim.keymap.set("n", "zi", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.trimCursor") end)
--   vim.keymap.set("n", "[f", function() vim.fn.VSCodeNotify("workbench.view.search.focus") end)
--   vim.keymap.set("n", "]f", function() vim.fn.VSCodeNotify("workbench.action.replaceInFiles") end)
--   vim.keymap.set("n", "gD", function() vim.fn.VSCodeNotify("editor.action.revealDefinitionAside") end)
--   vim.keymap.set("n", "[p", function() vim.fn.VSCodeNotify("extension.pasteImage") end)
--   vim.keymap.set("n", "[s", function() vim.fn.VSCodeNotify("editor.action.toggleStickyScroll") end)
--   vim.keymap.set("n", "=<", function() vim.fn.VSCodeNotify("editor.action.trimTrailingWhitespace") end)
--   vim.keymap.set("n", "gl", function() vim.fn.VSCodeNotify("editor.action.openLink") end)
--   vim.keymap.set("n", "<C-k>", function()
--      vim.fn.VSCodeCall("editor.action.insertLineBefore")
--      vim.cmd("norm k")
--   end)
--   -- vim.keymap.set("n","<leader>", function() vim.fn.VSCodeNotify(""))
--   -- Visual mode
--   vim.keymap.set("v", "gs", function() vim.fn.VSCodeNotifyVisual("codesnap.start", true) end)
--   vim.keymap.set("v", "<", function() vim.fn.VSCodeNotifyVisual("editor.action.outdentLines", false) end)
--   vim.keymap.set("v", ">", function() vim.fn.VSCodeNotifyVisual("editor.action.indentLines", false) end)

--   -- Insert mode
--   vim.keymap.set("i", "<C-k>", function() vim.fn.VSCodeNotify("editor.action.insertLineBefore") end)
-- end
local ls_conf = pcall(require, "user.lsp")
if not ls_conf then return end
-- require "user.lsp"
local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then return end

local config = {

  -- Set colorscheme to use
  -- colorscheme = "default_theme",
  colorscheme = "tokyonight-storm",
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
      backspace = vim.opt.backspace + { "nostop" }, -- Don't stop backspace at insert
      clipboard = "unnamedplus", -- Connection to the system clipboard
      cmdheight = 0, -- hide command line unless needed
      completeopt = { "menuone", "noselect" }, -- Options for insert mode completion
      copyindent = true, -- Copy the previous indentation on autoindenting
      cursorline = true, -- Highlight the text line of the cursor
      expandtab = true, -- Enable the use of space in tab
      fileencoding = "utf-8", -- File content encoding for the buffer
      fillchars = { eob = " " }, -- Disable `~` on nonexistent lines
      history = 100, -- Number of commands to remember in a history table
      ignorecase = true, -- Case insensitive searching
      laststatus = 3, -- globalstatus
      lazyredraw = true, -- lazily redraw screen
      mouse = "a", -- Enable mouse support
      number = true, -- Show numberline
      preserveindent = true, -- Preserve indent structure as much as possible
      pumheight = 10, -- Height of the pop up menu
      relativenumber = true, -- Show relative numberline
      scrolloff = 8, -- Number of lines to keep above and below the cursor
      shiftwidth = 2, -- Number of space inserted for indentation
      showmode = false, -- Disable showing modes in command line
      showtabline = 2, -- always display tabline
      sidescrolloff = 8, -- Number of columns to keep at the sides of the cursor
      signcolumn = "yes", -- Always show the sign column
      smartcase = true, -- Case sensitivie searching
      splitbelow = true, -- Splitting a new window below the current one
      splitright = true, -- Splitting a new window at the right of the current one
      swapfile = false, -- Disable use of swapfile for the buffer
      tabstop = 2, -- Number of space in a tab
      termguicolors = true, -- Enable 24-bit RGB color in the TUI
      timeoutlen = 300, -- Length of time to wait for a mapped sequence
      undofile = true, -- Enable persistent undo
      updatetime = 300, -- Length of time to wait before triggering the plugin
      wrap = true, -- Disable wrapping of lines longer than the width of window
      writebackup = false, -- Disable making a backup before overwriting a file
      -- minimal number of screen columns either side of cursor if wrap is `false`
      -- guifont = "monospace:h17", -- the font used in graphical neovim applications
      guifont = "Source_Code_Pro:h17", -- the font used in graphical neovim applications
      whichwrap = "bs<>[]hl", -- which "horizontal" keys are allowed to travel to prev/next line
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
  -- header = {
  --   [[                  __        __                      .___      ]],
  --   [[______   ____    |__| ____ |  | __   ____  ____   __| _/____  ]],
  --   [[\____ \ /  _ \   |  |/  _ \|  |/ / _/ ___\/  _ \ / __ |/ __ \ ]],
  --   [[|  |_> >  <_> )  |  (  <_> )    <  \  \__(  <_> ) /_/ \  ___/ ]],
  --   [[|   __/ \____/\__|  |\____/|__|_ \  \___  >____/\____ |\___  >]],
  --   [[|__|         \______|           \/      \/           \/    \/ ]],
  -- },
  header = {
    [[             _       _                    _      ]],
    [[            (_)     | |                  | |     ]],
    [[ _ __   ___  _  ___ | | __   ___ ___   __| | ___ ]],
    [[| '_ \ / _ \| |/ _ \| |/ /  / __/ _ \ / _` |/ _ \]],
    [[| |_) | (_) | | (_) |   <  | (_| (_) | (_| |  __/]],
    [[| .__/ \___/| |\___/|_|\_\  \___\___/ \__,_|\___|]],
    [[| |        _/ |                                  ]],
    [[|_|       |__/                                   ]],
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
      -- hl.DiagnosticError.italic = true
      -- hl.DiagnosticHint.italic = true
      -- hl.DiagnosticInfo.italic = true
      -- hl.DiagnosticWarn.italic = true

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
      ["neo-tree"] = false,
      notify = true,
      ["nvim-tree"] = true,
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
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
      -- jdtls = function()
      --   -- use this function notation to build some variables
      --   local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
      --   local root_dir = require("jdtls.setup").find_root(root_markers)
      --
      --   -- calculate workspace dir
      --   local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
      --   local workspace_dir = vim.fn.stdpath "data" .. "/site/java/workspace-root/" .. project_name
      --   os.execute("mkdir " .. workspace_dir)
      --
      --   -- get the mason install path
      --   local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
      --
      --   -- get the current OS
      --   local os
      --   if vim.fn.has "macunix" then
      --     os = "mac"
      --   elseif vim.fn.has "win32" then
      --     os = "win"
      --   else
      --     os = "linux"
      --   end
      --
      --   -- return the server config
      --   return {
      --     cmd = {
      --       "java",
      --       "-Declipse.application=org.eclipse.jdt.ls.core.id1",
      --       "-Dosgi.bundles.defaultStartLevel=4",
      --       "-Declipse.product=org.eclipse.jdt.ls.core.product",
      --       "-Dlog.protocol=true",
      --       "-Dlog.level=ALL",
      --       "-javaagent:" .. install_path .. "/lombok.jar",
      --       "-Xms1g",
      --       "--add-modules=ALL-SYSTEM",
      --       "--add-opens",
      --       "java.base/java.util=ALL-UNNAMED",
      --       "--add-opens",
      --       "java.base/java.lang=ALL-UNNAMED",
      --       "-jar",
      --       vim.fn.glob(install_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
      --       "-configuration",
      --       install_path .. "/config_" .. os,
      --       "-data",
      --       workspace_dir,
      --     },
      --     root_dir = root_dir,
      --   }
      -- end,
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
        config = function() require "user.coderunner" end,
      },
      ["folke/tokyonight.nvim"] = {
        config = function() require "user.colorscheme.tokyonight-config" end,
      },
      -- ["ziontee113/color-picker.nvim"] = {
      --   config = function()
      --     require("color-picker")
      --   end
      -- },
      ["glepnir/oceanic-material"] = {},
      ["marko-cerovac/material.nvim"] = {
        config = function() require "user.colorscheme.material-theme" end,
      },
      ["iamcco/markdown-preview.nvim"] = {
        config = function() require "user.markdown-config" end,
      },
      ["williamboman/nvim-lsp-installer"] = {},
      ["Mofiqul/dracula.nvim"] = {},
      ["kyazdani42/nvim-tree.lua"] = {
        config = function() require "user.nvim-tree" end,
      },
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
        vim.fn.stdpath "config" .. "/lua/user/my-snippets",
      },
    },
  },

  -- CMP Source Priorities
  -- modify here the priorities of default cmp sources
  -- higher value == higher priority
  -- The value can also be set to a boolean for disabling default sources:
  -- false == disabled
  -- true == 1000
  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
  },

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
          ["e"] = { "<cmd>NvimTreeToggle<cr>", "Exploler" },
          ["b"] = { name = "Buffer" },
          ["l"] = {
            name = "LSP",
            f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
            M = { ":Mason<cr>", "Mason Install" },
          },
          ["r"] = {
            name = "Run",
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
    vim.api.nvim_create_autocmd("Filetype", {
      pattern = "java", -- autocmd to start jdtls
      callback = function()
        local config = astronvim.lsp.server_settings "jdtls"
        if config.root_dir and config.root_dir ~= "" then require("jdtls").start_or_attach(config) end
      end,
    })
  end,
}

return config
