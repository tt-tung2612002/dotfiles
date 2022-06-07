-- vim.g["mapleader"]="<space>"
-- vim.g["maplocalleader"]="<space>"
-- vim.g.copilot_assume_mapped = true
vim.g["airline_theme"] = "codedark"
vim.cmd([[
nmap <F3> :TagbarToggle<CR>
nnoremap <Space> <Nop>
let mapleader = "\<Space>"
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
cnoremap <C-v> <c-r>"
imap <C-BS> <C-W>
]])


local opts = { noremap = true, silent = true }
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
keymap("n", "<F4>", ":Rename ", opts)
keymap("n", "<C-/>", ":CommentToggle <CR>", opts)
keymap("v", "<C-/>", ":CommentToggle <CR>", opts)

-- quit vim
keymap("n", "q", ":q<CR>", opts)
keymap("n", "Q", ":wq!<CR>", opts)
keymap("x", "<C-/>", ":CommentToggle <CR>", opts)

-- navigate between occurences of selected variable.
keymap('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
keymap('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

-- navigate between tabs of current buffer.
keymap('n', '<leader>1', "1gt", opts)
keymap('n', '<leader>2', "2gt", opts)
keymap('n', '<leader>3', "3gt", opts)
keymap('n', '<leader>4', "4gt", opts)
keymap('n', '<leader>5', "5gt", opts)
keymap('n', '<leader>6', "6gt", opts)
keymap('n', '<leader>7', "7gt", opts)
keymap('n', '<leader>8', "8gt", opts)
keymap('n', '<leader>9', "9gt", opts)

-- Next and previous problems.
keymap('n', '\\', "<cmd>call CocAction('diagnosticNext')<CR>", opts)







-- NvimTree Toggle
keymap('n', '<C-B>', ":NvimTreeToggle<CR>", opts)


-- save current file.
keymap("n", "<C-s>", ":w<CR>", opts)

-- Renamer
keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', opts)
keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', opts)
keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', opts)
