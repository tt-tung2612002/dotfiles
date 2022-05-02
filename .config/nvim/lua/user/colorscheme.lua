vim.cmd [[
try
  colorscheme hybrid
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
