-- vim.g["mapleader"]="<space>"
-- vim.g["maplocalleader"]="<space>"
vim.g["airline_theme"] = "codedark"
vim.cmd([[
set pastetoggle=<F10>
nmap <F3> :TagbarToggle<CR>
nnoremap <Space> <Nop>
let mapleader = "\<Space>"
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
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
highlight Comment guifg=#a26a4d
imap <C-BS> <C-W>
" Auto reload.
au FocusGained,BufEnter * :checktime
" Vim Commentary
"
autocmd User TelescopePreviewerLoaded setlocal wrap

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]])

local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

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

keymap("i", "<C-v>", "<F10><C-r>+<F10>", opts)
-- Rename current file.
keymap("n", "<F2>", ":Rename ", opts)
keymap("n", "<C-/>", ":CommentToggle <CR>", opts)
keymap("v", "<C-/>", ":CommentToggle <CR>", opts)

-- quit vim
keymap("n", "q", ":q<CR>", opts)
keymap("n", "Q", ":wq!<CR>", opts)
keymap("x", "<C-/>", ":CommentToggle <CR>", opts)

keymap('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
keymap('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)
