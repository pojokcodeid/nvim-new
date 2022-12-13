vim.opt.shortmess:append({ s = true, I = true }) -- disable startup message
astronvim.vim_opts(astronvim.user_plugin_opts("options", {
  opt = {
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
    wrap = true,
    writebackup = false, -- Disable making a backup before overwriting a file
    -- guifont = "CaskaydiaCove_NF_Mono:h17:w6",
    guifont = "Source Code Pro:h17:w3",
    -- guifont = "Cascadia Code:h17:w3",
    -- gfw = "1",
  },
  g = {
    -- ini config untuk neovide
    -- neovide_floating_blur_amount_x = 2.0,
    -- neovide_floating_blur_amount_y = 2.0,
    -- neovide_transparency = 0.8,
    -- neovide_underline_automatic_scaling = false,
    -- neovide_refresh_rate = 60,
    -- neovide_refresh_rate_idle = 5,
    -- neovide_confirm_quit = true,
    -- neovide_remember_window_size = true,
    -- neovide_cursor_vfx_mode = "ripple",
    -- neovide_scale_factor = 1.0,
    -- end config neovide
    highlighturl_enabled = true, -- highlight URLs by default
    mapleader = " ", -- set leader key
    zipPlugin = false, -- disable zip
    load_black = false, -- disable black
    loaded_2html_plugin = true, -- disable 2html
    loaded_getscript = true, -- disable getscript
    loaded_getscriptPlugin = true, -- disable getscript
    loaded_gzip = true, -- disable gzip
    loaded_logipat = true, -- disable logipat
    loaded_matchit = true, -- disable matchit
    loaded_netrwFileHandlers = true, -- disable netrw
    loaded_netrwPlugin = true, -- disable netrw
    loaded_netrwSettngs = true, -- disable netrw
    loaded_remote_plugins = true, -- disable remote plugins
    loaded_tar = true, -- disable tar
    loaded_tarPlugin = true, -- disable tar
    loaded_zip = true, -- disable zip
    loaded_zipPlugin = true, -- disable zip
    loaded_vimball = true, -- disable vimball
    loaded_vimballPlugin = true, -- disable vimball
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}))
