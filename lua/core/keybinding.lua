local g = vim.g
g.mapleader = " "


vim.cmd[[

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

]]