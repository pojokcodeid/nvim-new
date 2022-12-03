-- don't pass any arguments, luasnip will find the collection because it is
-- (probably) in rtp.
require("luasnip.loaders.from_vscode").lazy_load()
-- specify the full path...
require("luasnip.loaders.from_vscode").lazy_load({paths = "C:/Users/Asep/AppData/Local/nvim/my-snippets/B5-Snippets"})
require("luasnip.loaders.from_vscode").lazy_load({paths = "C:/Users/Asep/AppData/Local/nvim/my-snippets/laravel-blade"})
require("luasnip.loaders.from_vscode").lazy_load({paths = "C:/Users/Asep/AppData/Local/nvim/my-snippets/laravel-blade2"})
require("luasnip.loaders.from_vscode").lazy_load({paths = "C:/Users/Asep/AppData/Local/nvim/my-snippets/laravel5"})
-- or relative to the directory of $MYVIMRC
require("luasnip.loaders.from_vscode").load({paths = "./my_snippets/B5-Snippets"})