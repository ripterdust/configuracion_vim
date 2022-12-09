local g = vim.g

function cmd(command)
   vim.cmd(command)
end

cmd('let mapleader=" "')
cmd('nmap <Leader>q :w<CR> :bd<CR>')
cmd('nmap <Leader>f :NERDTreeFind<CR>')
cmd('nmap <Leader>w :w<CR>')
cmd('nmap <Leader>e :q!<CR>')
cmd('nmap <Leader>i :bw!<CR>')
cmd('nmap <Leader>s :source %<CR>')
cmd('nmap <Leader>p :PackerInstall<CR>')
cmd('nmap <C-o> :bp<CR>')
cmd('nmap <C-p> :bn<CR>')
cmd('nmap <Leader>o :Telescope find_files<CR>')
cmd('nmap <Leader>g :Telescope git_status<CR>')
cmd('nmap <C-f> :Telescope live_grep<CR>')
cmd('nmap <Leader>u :bufdo bwipeout<CR>')
cmd('inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<Tab>" : coc#refresh()')



g.floaterm_keymap_toggle = '<F1>'
g.floaterm_keymap_new = '<F3>'
g.floaterm_keymap_next = '<F2>'
g.floaterm_keymap_kill = '<F4>'
