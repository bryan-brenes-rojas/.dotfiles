vim.o.laststatus = 2
vim.cmd([[
let g:lightline = {
  \ 'colorscheme': 'nightfox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead',
  \ }
  \ }
]])

-- colorschemes: wombar, nightfox
