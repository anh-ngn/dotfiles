require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

	-- List of parsers to ignore installing (for "all")
	-- ignore_install = { "javascript" },

	highlight = {
		-- `false` will disable the whole extension
		enable = true,
		-- list of language that will be disabled
	},

	indent = {
		enable = true,
		disable = { "python", "cpp"},
	},
	autotag = {
		enable = true,
	},
}

