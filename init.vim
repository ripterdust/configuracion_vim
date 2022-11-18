" General configuration
set number
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set showmatch

" Inicializacions
autocmd VimEnter * NERDTree

" Instalación de plugins
call plug#begin('~/.config/nvim/plugged')

  " ------------ Personalización
  Plug 'tomasr/molokai'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'morhetz/gruvbox'
  Plug 'ryanoasis/vim-devicons'
  Plug 'joshdick/onedark.vim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'chrisbra/csv.vim'
" ----------- IDE
  Plug 'preservim/nerdtree' " Navegación lateral
  Plug 'jiangmiao/auto-pairs' " Autocompletado de signos
  Plug 'Yggdroot/indentLine' 		"indentacion
  Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos
  Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
  Plug 'vim-airline/vim-airline-themes'
  Plug 'voldikss/vim-floaterm' " Terminal
  " Buffer (tabs)
  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' Icons without colours
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
  "GIT
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  "Autocomplementado
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "Sintax
  Plug 'sheerun/vim-polyglot' "resalta de color los lenguajes de progra
  Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta
  Plug 'KabbAmine/vCoolor.vim'   "insertar color, alt +c, atl + r; alt + v
  Plug 'valloric/matchtagalways' " Para sombrear etiquetas de inicio y de salida
  Plug 'sbdchd/neoformat'  "prettier javascript


call plug#end()

" ----------------- Perzonalización 

" let g:airline_theme='promptline'
set nowrap
colorscheme tokyonight-moon

" ---------------- Tabs
lua << EOF
require("bufferline").setup{
options = {
    mode = "buffers",
    numbers = "ordinal",
    indicator = {
      style = 'icon'
     },
   hover = {
     enabled = true,
     reveal = {'close'}
     },
    left_mouse_comman = 'buffer %d'
  }
}
EOF


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



" --------------- Atajos de teclado
" * Configurando la tecla lider
let mapleader=" "

" * Nerd three
nmap <Leader>f :NERDTreeFind<CR>

" * Atajos generales
nmap <Leader>q :wq<CR>
nmap <Leader>w :w<CR>
nmap <Leader>e :q!<CR>
nmap <Leader>s :source %<CR>
map <Leader>p :PlugInstall<CR>
