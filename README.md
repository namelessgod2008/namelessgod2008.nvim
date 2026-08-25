# namelessgod2008.nvim

一个基于 **Neovim 原生包管理(`vim.pack`)** 的个人 Neovim 配置,零插件管理器依赖,开箱即用。

## ✨ 特性

- 🚀 **零插件管理器** —— 使用 Neovim 内置的 `vim.pack` 加载插件,简洁、快速、无冗余依赖
- 📦 **自带插件** —— 文件查找、模糊搜索、文件树、LSP、补全、状态栏、高亮解析器等一应俱全
- ⚡ **Treesitter 按需安装** —— 打开对应语言文件时自动安装解析器并启用高亮
- 🎨 **Tokyo Night 主题** —— 默认 `night` 风格
- 🖱 **鼠标 / 剪贴板开箱即用** —— 完整支持系统剪贴板

## 🗂 目录结构

```
nvim/
├── init.lua                     # 入口,按顺序加载各模块
├── lsp/
│   └── lua-language-server.lua  # lua-language-server 配置(root_markers 等)
├── lua/
│   ├── core/
│   │   ├── options.lua          # 基础设置(行号/缩进/搜索等)
│   │   └── keymaps.lua          # 快捷键
│   ├── lsp.lua                  # LSP 启用配置
│   └── plugins/
│       ├── plugins.lua          # 插件列表(vim.pack)
│       ├── loader.lua           # 加载插件
│       └── configs/
│           ├── blinkcmp.lua     # 补全(blink.cmp)
│           ├── lualine.lua      # 状态栏
│           ├── mason.lua        # LSP 安装器
│           ├── neotree.lua      # 文件树
│           ├── telescope.lua    # 模糊搜索
│           ├── tokyonight.lua   # 主题
│           └── treesitter-auto.lua # Treesitter 自动安装
└── nvim-pack-lock.json          # 插件锁定文件
```

## 📥 安装

### 前置要求

- **Neovim 0.11.3+**(配置中使用了新的 LSP API `vim.lsp.enable`)
- **Git**(用于拉取插件)
- 网络可访问 GitHub

### 安装步骤

```bash
# Windows(Local AppData)
git clone https://github.com/namelessgod2008/namelessgod2008.nvim %LOCALAPPDATA%\nvim

# Linux / macOS
git clone https://github.com/namelessgod2008/namelessgod2008.nvim ~/.config/nvim
```

> 克隆完成后直接启动 `nvim`,插件会自动拉取安装。

## 🔑 快捷键

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `jk` | insert | 退出插入模式(相当于 `Esc`) |
| `<leader>sv` | normal | 水平新增窗口(左右分屏) |
| `<leader>sh` | normal | 垂直新增窗口(上下分屏) |
| `<leader>sc` | normal | 窗口间切换 |
| `<C-w>c` | normal | **关闭当前窗口**(Neovim 内置) |
| `<C-w>o` | normal | 只保留当前窗口,关闭其余所有窗口(内置) |
| `<S-j>` / `<S-k>` | visual | 向下 / 向上移动选中行 |
| `<leader>e` | normal | 打开/关闭文件树 Neo-tree |
| `<leader>ff` | normal | Telescope 查找文件 |
| `<leader>fg` | normal | Telescope 全文搜索 (live_grep) |
| `<leader>fb` | normal | 切换 Buffer |
| `<leader>fh` | normal | 查看帮助文档 |

> `<leader>` 默认为 **空格键**。

## 🧩 内置插件

| 插件 | 作用 |
|------|------|
| [blink.cmp](https://github.com/saghen/blink.cmp) | 智能补全(LSP/路径/片段/缓冲区) |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP / DAP / Lint 工具安装管理 |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | 文件树 |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | 模糊查找(文件/文本/Buffer/帮助) |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 语法高亮(按需自动安装) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | 个性化状态栏 |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | 主题配色 |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer 标签栏(依赖已加载) |

## 🛠 Treesitter 解析器

解析器会在你**首次打开对应语言文件时自动下载并安装**,支持的语言见下表:

| 文件类型 | 对应语言 |
|----------|----------|
| `python`, `rust`, `go` | python / rust / go |
| `javascript`, `jsx`, `typescript`, `tsx` | javascript / jsx / typescript / tsx |
| `html`, `css`, `xml` | html / css / xml |
| `cpp`, `c`, `sh`, `bash` | cpp / c / bash |
| `json`, `yaml`, `toml` | json / yaml / toml |
| `java`, `kotlin` | java / kotlin |

## 💡 常见问题

### 补全弹不出来?

确保已通过 `:Mason` 安装了对应语言的 LSP,例如 Lua 请先安装 `lua-language-server`。

### 打开新语言文件时等待较久?

首次打开会下载并编译该语言的 treesitter 解析器(最多等待 5 分钟),之后便不会再等待。

## 📄 许可证

MIT

---

如果这个配置对你有帮助,欢迎 ⭐ Star。