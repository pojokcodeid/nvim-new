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
if vim.g.vscode then require "user.config.vscode_config" end
local ls_conf = pcall(require, "user.lsp")
if not ls_conf then return end
-- require "user.lsp"

local config = {

  -- Set colorscheme to use
  -- colorscheme = "default_theme",
  -- colorscheme = "tokyonight",
  colorscheme = "tokyonight-night",
  -- colorscheme = "nord",
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
    opt = require "user.config.opt_config",
    g = require "user.config.default_config",
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
  -- header = {
  --   [[             _       _                    _      ]],
  --   [[            (_)     | |                  | |     ]],
  --   [[ _ __   ___  _  ___ | | __   ___ ___   __| | ___ ]],
  --   [[| '_ \ / _ \| |/ _ \| |/ /  / __/ _ \ / _` |/ _ \]],
  --   [[| |_) | (_) | | (_) |   <  | (_| (_) | (_| |  __/]],
  --   [[| .__/ \___/| |\___/|_|\_\  \___\___/ \__,_|\___|]],
  --   [[| |        _/ |                                  ]],
  --   [[|_|       |__/                                   ]],
  -- },
  header = {
    [[             _       _                       _       ]],
    [[            (_)     | |                     | |      ]],
    [[ ____   ___  _  ___ | |  _     ____ ___   _ | | ____ ]],
    [[|  _ \ / _ \| |/ _ \| | / )   / ___/ _ \ / || |/ _  )]],
    [[| | | | |_| | | |_| | |< (   ( (__| |_| ( (_| ( (/ / ]],
    [[| ||_/ \____| |\___/|_| \_)   \____\___/ \____|\____)]],
    [[|_|       (__/                                       ]],
  },
  -- Default theme configuration
  default_theme = require "user.config.default_theme",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    --virtual_text = true,
    --underline = false,
  },

  -- Extend LSP configuration
  lsp = require "user.config.lsp_config",

  -- Mapping data with "desc" stored directly by vim.keymap.set().
  --
  -- Please use this mappings table to set keyboard mapping since this is the
  -- lower level configuration and more robust one. (which-key will
  -- automatically pick-up stored data by this setting.)
  mappings = require "user.config.maapings",
  -- Configure plugins
  plugins = require "user.config.plugins",
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
  ["which-key"] = require "user.config.whichkey",

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
    -- vim.api.nvim_create_autocmd("Filetype", {
    --   pattern = "java", -- autocmd to start jdtls
    --   callback = function()
    --     local config = astronvim.lsp.server_settings "jdtls"
    --     if config.root_dir and config.root_dir ~= "" then require("jdtls").start_or_attach(config) end
    --   end,
    -- })
  end,
}

return config
