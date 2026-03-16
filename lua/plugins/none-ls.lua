return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local b = null_ls.builtins

		null_ls.setup({
			sources = {
				b.formatting.stylua,
				b.completion.spell,
				b.diagnostics.rubocop,
				b.formatting.rubocop,
			},
		})
		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format file" })
	end,
}
