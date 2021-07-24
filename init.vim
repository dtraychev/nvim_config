lua << EOF
require "plugins"
require("github-theme").setup({
  themeStyle = "dimmed",
  -- ... your github-theme config
})
require('lualine').setup({
  options = {theme = 'material'}
})
EOF

set number
set relativenumber

" let g:python_host_prog  = '/path/to/python'
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
