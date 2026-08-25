plugintable = {
    { src = 'https://github.com/saghen/blink.cmp', version = "v1" },
    { src = 'https://github.com/akinsho/bufferline.nvim' },
    { src = "https://github.com/mason-org/mason.nvim", name = "mason" },
    -- neo-tree依赖
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/MunifTanjim/nui.nvim' },
    -- neo-tree 本体
    { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', branch = "v3.x", name = "neotree" },
    --telescope
    { src = 'https://github.com/nvim-telescope/telescope.nvim', branch = "0.1.x" },
    --lualine
    { src = 'https://github.com/nvim-lualine/lualine.nvim', name = "lualine" },
    --treesitter（仅用于 :TSInstall 管理解析器）
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', branch = "main" },
    --主题
    { src = 'https://github.com/folke/tokyonight.nvim' },
}

