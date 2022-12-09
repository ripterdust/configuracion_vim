local gset = vim.api.nvim_set_var

gset("airline#extensions#tabline#lef_sep", ' ')
gset('airline#extensions#tabline#left_alt_sep', 1)
gset('airline_theme', 'google_dark')
gset('airline#extensions#default#section_truncate_width', {
    b =  79,
    x =  60,
    y =  88,
    z =  45,
    warning =  80,
    error =  80,
})

gset('airline#extensions#default#layout', {
    { 'a', 'b' , 'c', 'x' }, {'z', 'error' }
})