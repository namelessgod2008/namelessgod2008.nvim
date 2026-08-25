local opt = vim.opt
local api = vim.api

--行号
opt.relativenumber = false
opt.number = true

--缩进
opt.tabstop = 4      --设置Tab缩进为4个空格(如同Google的Java编码规则)
opt.shiftwidth = 4   --设置自动缩进为4个空格
opt.expandtab = true --开启Tab缩进
opt.autoindent = true--开启自动缩进

--防止字符溢出后自动换行
opt.wrap = false

--光标行
opt.cursorline = true

--鼠标
opt.mouse:append("a")

--新窗口在右和下
opt.splitright = true
opt.splitbelow = true

--搜索大小写
opt.ignorecase = true
opt.smartcase = true

--外观
opt.termguicolors = true

--行列号
opt.signcolumn = "yes"

--系统剪贴板
opt.clipboard:append("unnamedplus")

