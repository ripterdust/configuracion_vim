local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'tomasr/molokai'
    use 'morhetz/gruvbox'
    use 'ryanoasis/vim-devicons'
    use 'joshdick/onedark.vim'
    use 'chrisbra/csv.vim'
    use 'folke/tokyonight.nvim'
    -- ----------- IDE
    use 'glepnir/dashboard-nvim'
    use 'preservim/nerdtree' -- Navegación lateral
    use 'jiangmiao/auto-pairs' -- Autocompletado de signos
    use 'Yggdroot/indentLine' --		"indentacion
    use 'christoomey/vim-tmux-navigator'	-- poder navegar entre archivos abiertos
    use 'vim-airline/vim-airline'		-- diseño de la barra en la cual se muestran los modos, la linea, etc.
    use 'vim-airline/vim-airline-themes'
    use 'voldikss/vim-floaterm' -- Terminal
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    -- Snippets
    use 'SirVer/ultisnips'
    use 'mlaursen/vim-react-snippets'
    -- Buffer (tabs)
    -- use 'ryanoasis/vim-devicons' Icons without colours
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- GIT
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    --Autocomplementado
    use {'neoclide/coc.nvim', branch = 'release'}
    --Sintax
    use 'sheerun/vim-polyglot' -- resalta de color los lenguajes de progra
    use 'lilydjwg/colorizer' -- Color hexadecimal en css, pinta
    use 'KabbAmine/vCoolor.vim'   --insertar color, alt +c, atl + r; alt + v
    use 'valloric/matchtagalways' -- Para sombrear etiquetas de inicio y de salida
    use 'sbdchd/neoformat'  -- prettier javascript
    use 'folke/lsp-colors.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'folke/trouble.nvim' -- Error showmatch
    use 'honza/vim-snippets' -- Snippets

    -- Búsquedad e archivos
    use {'nvim-telescope/telescope.nvim',  tag = '0.1.0' }
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
end)
