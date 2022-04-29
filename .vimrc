let NERDTreeMapOpenSplit ='q'
let NERDTreeMapUp='i'
let NERDTreeMenuDown ='k'
let NERDTreeMapUpDir= 'u'
noremap <C-f> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
" Change an option
noremap <C-f> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>
nmap <F3> :TagbarToggle<CR>
nnoremap j h
nnoremap k j
noremap h a
vnoremap j h
vnoremap k j
vnoremap h a
xnoremap j h
xnoremap k j
xnoremap h a
nnoremap a <Nop>
noremap <C-Z> <Esc>u
nnoremap a i
nnoremap dk da
nnoremap ck ca
nnoremap i k
nnoremap 0 ^
noremap ge $
noremap <C-U> <C-O>
noremap <C-O> <C-I>
nnoremap m 5<C-E>
nnoremap , 5<C-Y>
noremap <C-L> <Esc><C-W>l
noremap <C-J> <Esc><C-W>h
noremap <C-K> <Esc><C-W>j
noremap <C-I> <Esc><C-W>k
vnoremap <C-c> y
nnoremap <C-v> <Esc>p
xnoremap <C-c> y
nnoremap <C-A> ggVG
nnoremap <M-i> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-j> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
nnoremap <M-l> :vertical resize +2<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

" Vim Commentary
nmap <C-/> <Plug>CommentaryLine
"
set path+=**
set laststatus=3
set hlsearch
set relativenumber
set clipboard=unnamedplus
set autoindent
set ignorecase
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set splitright
set noshowmode
syntax enable
