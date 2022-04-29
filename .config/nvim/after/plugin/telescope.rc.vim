nnoremap <silent> <C-F> <Cmd>Telescope find_files<CR>
nnoremap <silent> <C-R> <Cmd>Telescope live_grep<CR>
lua <<EOF

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
