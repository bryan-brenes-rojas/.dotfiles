vim.o.laststatus = 2
vim.cmd([[
let g:lightline = {
  \ 'colorscheme': 'nightfox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' },
  \ 'component_function': {
  \   'gitbranch': 'LightlineFugitive',
  \ }
  \ }
	function! LightlineFugitive()
		let branch = FugitiveHead()
		return branch !=# '' ? ' '.branch : ''
	endfunction
]])

-- colorschemes: wombar, nightfox
