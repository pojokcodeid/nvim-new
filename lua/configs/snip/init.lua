local lpath = vim.fn.stdpath("config") .. "/my-snippets"

require("luasnip.loaders.from_vscode").lazy_load()
-- specify the full path...
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/B5-Snippets",
})
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/laravel-blade",
})
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/laravel-blade2",
})
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/laravel5",
})
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/javascript",
})
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/html",
})
require("luasnip.loaders.from_vscode").lazy_load({
  paths = lpath .. "/codeigniter4",
})
-- or relative to the directory of $MYVIMRC
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/B5-Snippets" })
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/laravel-blade" })
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/laravel-blade2" })
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/laravel5" })
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/javascript" })
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/html" })
require("luasnip.loaders.from_vscode").load({ paths = lpath .. "/codeigniter4" })
