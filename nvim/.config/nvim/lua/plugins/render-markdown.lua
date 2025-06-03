return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		heading = {
			border = true,
		},
		code = {
			width = "block",
			left_pad = 2,
			right_pad = 4,
			border = "thick",
			position = "right",
		},
		-- TODO: change checkboxes
		checkbox = {
			-- unchecked = { icon = "✘ " },
			-- checked = { icon = "✔ " },
			-- custom = { todo = { rendered = "◯ " } },
		},
		dash = {
			highlight = "RenderMarkdownH5fg",
		},
        bullet = {
        highlight = "RenderMarkdownH1fg"}
	},
}
