local km = vim.keymap

------------Base基础------------
--leader主键
vim.g.mapleader = " "

--insert插入模式
km.set("i","jk","<Esc>")

--normal普通模式
--窗口
km.set("n","<leader>sv","<C-w>v",{ desc = "Split vertically" }) --split verticalsh水平新增窗口
km.set("n","<leader>sh","<C-w>s",{ desc = "Split horizontally" }) --split horizontal垂直新增窗口
km.set("n","<leader>sc","<C-w><C-w>",{ desc = "Switch window" }) --switch window切换窗口

--visual视觉模式
km.set("v","<s-j>",":m '>+1<CR>gv=gv",{ desc = "Move line down" }) --向下平移
km.set("v","<s-k>",":m '<-2<CR>gv=gv",{ desc = "Move line up" }) --向上平移

------------Neotree------------
km.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" }) --打开Neotree

------------Telescope------------
km.set("n","<leader>ff","<cmd>Telescope find_files<cr>",{ desc = "Telescope find files" }) --文件查找
km.set("n","<leader>fg","<cmd>Telescope live_grep<cr>",{ desc = "Telescope live grep" }) --全文搜索
km.set("n","<leader>fb","<cmd>Telescope buffers<cr>",{ desc = "Telescope change buffer" }) --Buffer切换
km.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",{ desc = "Telescope help" }) --帮助文档
