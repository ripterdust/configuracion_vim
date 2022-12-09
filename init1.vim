" Configuración general
set number
syntax enable
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set showmatch
set clipboard=unnamedplus

" Inicializacions
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"Instalación de plugins
call plug#begin('~/.config/nvim/plugged')

  -- ------------ Personalización
  Plug 'tomasr/molokai'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'morhetz/gruvbox'
  Plug 'ryanoasis/vim-devicons'
  Plug 'joshdick/onedark.vim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'chrisbra/csv.vim'

-- ----------- IDE
  Plug 'glepnir/dashboard-nvim'
  Plug 'preservim/nerdtree' 
  Plug 'jiangmiao/auto-pairs' 
  Plug 'Yggdroot/indentLine' 		
  Plug 'christoomey/vim-tmux-navigator'	
  Plug 'vim-airline/vim-airline'		
  Plug 'vim-airline/vim-airline-themes'
  Plug 'voldikss/vim-floaterm'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'SirVer/ultisnips'
  Plug 'mlaursen/vim-react-snippets'
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
  "GIT
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  "Autocomplementado
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot' 
  Plug 'lilydjwg/colorizer' 
  Plug 'KabbAmine/vCoolor.vim'   
  Plug 'valloric/matchtagalways' 
  Plug 'sbdchd/neoformat'  
  Plug 'folke/lsp-colors.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'folke/trouble.nvim' 
  Plug 'honza/vim-snippets' 

  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'


call plug#end()

" ----------------- Perzonalización 

" let g:airline_theme='promptline'
set nowrap
colorscheme tokyonight-moon

" ---------------- Tabs
lua << EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Language servers
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup { capabilities = capabilities }
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}


require("bufferline").setup{
options = {
    mode = "buffers",
    numbers = "ordinal",
    indicator = {
      style = 'icon'
     },
   hover = {
     enabled = true,
     reveal = {'close'},
     delay= 200
     },
    left_mouse_comman = 'buffer %d',
    right_mouse_command = 'buffer delete',
    buffer_close_icon = 'X',
    diagnostics = 'coc',
    show_close_icon = true,
    
  }
}


require('lsp-colors').setup({
  Error = "#db4b4b",
  Warning = '#e0af68',
  Information = '#0db9d7',
  Hing = "#10B981"
})

require("trouble").setup {
    icons = false,
    fold_open = "v", -- icon used for open folds
    fold_closed = ">", -- icon used for closed folds
    indent_lines = false, -- add an indent guide below the fold icons
    signs = {
        -- icons / text used for a diagnostic
        error = "error",
        warning = "warn",
        hint = "hint",
        information = "info"
    },
    use_diagnostic_signs = false -- enabling this will Plug the signs defined in your lsp client
  }


require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules", '~/.config/nvim/plugged/'} } }
EOF

let g:completion_chain_complete_list = {
    \ 'default' : {
    \   'default': [
    \       {'complete_items': ['snippet', 'lsp', 'buffers']},
    \],
    \   },
    \}

" ---------------- Terminal
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_new = '<F3>'
let g:floaterm_keymap_next = '<F2>'
let g:floaterm_keymap_kill = '<F4>'

" -------------- VIm Airline configuración
  
let g:airline#extensions#tabline#lef_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='google_dark'
let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b' , 'c', 'x' ],
    \ [ 'z', 'error' ]
    \ ]


" ---------------------- CoC
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-css',
  \ 'coc-markdownlint',
  \ 'coc-snippets'
  \]

" * Coc 
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" --------------- Atajos de teclado
" * Configurando la tecla lider
let mapleader=" "

" * Nerd three
nmap <Leader>f :NERDTreeFind<CR>

" * Atajos generales
nmap <Leader>q :w<CR> :bd<CR>
nmap <Leader>w :w<CR>
nmap <Leader>e :q!<CR>
nmap <Leader>i :bw!<CR>
nmap <Leader>s :source %<CR>
nmap <Leader>p :PlugInstall<CR>
nmap <C-o> :bp<CR>
nmap <C-p> :bn<CR>
nmap <Leader>o :Telescope find_files<CR>
nmap <Leader>g :Telescope git_status<CR>
nmap <C-f> :Telescope live_grep<CR>

nmap <Leader>u :bufdo bwipeout<CR>
autocmd VimEnter * source ~/.config/nvim/init.vim
