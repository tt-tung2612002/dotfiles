vim.g["codedark_term256"]=1
vim.cmd [[
try
  set t_ut=
  colorscheme codedark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
