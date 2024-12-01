local function config()
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
		},
	})

	-- Create autocommand
	vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = { "*.py", "*.rs", "*.lua" },
		callback = function(args)
			require("conform").format({ bufnr = args.buf })
		end,
	})
end

return { {
	"stevearc/conform.nvim",
	opts = {},
	config = config,
} }