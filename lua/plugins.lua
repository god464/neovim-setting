local packer = require("packer")
packer.startup({
	function(use)
		-- Packer 可以管理自己本身
		use 'wbthomason/packer.nvim'
		--主题
		use("folke/tokyonight.nvim")
		-- 你的插件列表...
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {
				'nvim-tree/nvim-web-devicons', -- optional, for file icons
			},

		}	use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
		use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
		use("arkav/lualine-lsp-progress")
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0',
			requires = { {'nvim-lua/plenary.nvim'} }
		}
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		use({ "neovim/nvim-lspconfig" })
		use({ "williamboman/mason.nvim" })
		use({ "williamboman/mason-lspconfig.nvim" })
		use({"mfussenegger/nvim-dap"})
		
	end,

	git = {
		-- default_url_format = "https://hub.fastgit.xyz/%s",
		-- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
		-- default_url_format = "https://gitcode.net/mirrors/%s",
		--		default_url_format = "https://hub.hhhh.host/github.com/%s",
	},
}
)


