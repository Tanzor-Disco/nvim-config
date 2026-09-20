return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		--installing languages
		require('nvim-treesitter').setup {
		  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
		  install_dir = vim.fn.stdpath('data') .. '/site'
		}
		require('nvim-treesitter').install { 'rust', 'typescript', 'javascript', 'html', 'css', 'go', 'python', 'c_sharp'}
		
		--enabling tresitter
		vim.api.nvim_create_autocmd('FileType', {
		pattern = { 'rs', 'ts', 'js', 'html', 'css', 'go', 'py', 'tsx', 'cs'},
		callback = function() vim.treesitter.start() end,
		})
	end
}

