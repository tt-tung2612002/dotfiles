vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd([[
let NERDTreeMapOpenSplit='q'
let NERDTreeMapUp='i'
let NERDTreeMenuDown='k'
let NERDTreeMapUpDir= 'u'
nmap <F3> :TagbarToggle<CR>
nnoremap j h
nnoremap k j
nnoremap i k
noremap h a
vnoremap j h
vnoremap k j
vnoremap i k
xnoremap j h
xnoremap k j
xnoremap i k
nnoremap a <Nop>
noremap <C-Z> <Esc>u
nnoremap a i
nnoremap dk da
nnoremap ck ca
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

set iskeyword+=_
set iskeyword+=-

" Auto reload.
au FocusGained,BufEnter * :checktime
" Vim Commentary
nmap <C-/> <Plug>CommentaryLine
"
autocmd User TelescopePreviewerLoaded setlocal wrap

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]])

-- move text up and down
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<A-k>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-i>", ":move '<-2<CR>gv-gv", opts)



