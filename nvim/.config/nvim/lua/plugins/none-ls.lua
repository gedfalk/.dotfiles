-- None-ls is required for adding linters and formatters

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black, -- python formatter
			},
		})

		vim.keymap.set("n", "<C-f>f", vim.lsp.buf.format, {})
	end,
}
