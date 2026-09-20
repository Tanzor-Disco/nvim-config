return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("csharp_ls", {
            cmd_env = {
                DOTNET_ROOT = "/opt/homebrew/Cellar/dotnet/10.0.400/libexec",
                DOTNET_ROOT_ARM64 = "/opt/homebrew/Cellar/dotnet/10.0.400/libexec",
            },
        })

		vim.lsp.enable({
			"gopls",
			"rust_analyzer",
			"ts_ls",
			"html",
			"cssls",
			"pyright",
			"csharp_ls"
		})	
	end
}
