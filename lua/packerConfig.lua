local packer = require 'packer'

packer.init{
}

packer.reset()

packer.startup(function(use)
   use 'wbthomason/packer.nvim'
   use 'tomasr/molokai'
   use {'dracula/vim',  as = 'dracula' }
   use 'morhetz/gruvbox'
   use 'ryanoasis/vim-devicons'
   use 'joshdick/onedark.vim'
   use {'folke/tokyonight.nvim', branch = 'main' }
   use 'chrisbra/csv.vim'
   use 'glepnir/dashboard-nvim'
   use 'preservim/nerdtree'
   use 'jiangmiao/auto-pairs'
   use 'Yggdroot/indentLine'
   use 'christoomey/vim-tmux-navigator'
   use 'vim-airline/vim-airline'
   use 'vim-airline/vim-airline-themes'
   use 'voldikss/vim-floaterm'
   use 'neovim/nvim-lspconfig'
   use 'nvim-lua/completion-nvim'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'hrsh7th/nvim-cmp'
   use 'SirVer/ultisnips'
   use 'mlaursen/vim-react-snippets'
   use {'akinsho/bufferline.nvim', tag = 'v3.*' }
   use 'tpope/vim-fugitive'
   use 'airblade/vim-gitgutter'
   use {'neoclide/coc.nvim', branch = 'release'}
   use 'sheerun/vim-polyglot'
   use 'lilydjwg/colorizer'
   use 'KabbAmine/vCoolor.vim'
   use 'valloric/matchtagalways'
   use 'sbdchd/neoformat'
   use 'folke/lsp-colors.nvim'
   use 'kyazdani42/nvim-web-devicons'
   use 'folke/trouble.nvim'
   use 'honza/vim-snippets'
   use {'nvim-telescope/telescope.nvim', tag = '0.1.0' }
   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'
end)
