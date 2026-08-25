require("blink.cmp").setup({

    fuzzy = { implementation = "prefer_rust_with_warning" },

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},


    keymap = {
        --按下enter确定当前选中的补全项
        preset = 'enter',
        --上下箭头来选择补全项 
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
    },
   
    completion = {
		-- The keyword should only match against the text before
		keyword = { range = "prefix" },
		menu = {
			-- Use treesitter to highlight the label text for the given list of sources
			draw = {
				treesitter = { "lsp" },
			},
		},
		-- Show completions after tying a trigger character, defined by the source
		trigger = { show_on_trigger_character = true },
		documentation = {
			-- Show documentation automatically
			auto_show = true,
		},
	},

	-- Signature help when tying
	signature = { enabled = true },
    
})
