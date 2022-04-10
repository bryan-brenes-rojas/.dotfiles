-- TODO: convert this to lua
vim.cmd([[
function MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	let path = bufname(buflist[winnr - 1])
	let splits = split(path, '/')
	if len(splits) > 0
		let label = split(path, '/')[-1]
		if len(buflist) > 1
			let label .= ' (' . len(buflist) . ')'
		endif
		return label
	endif
	return '[No Name]'
endfunction

function MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" select the highlighting
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		" set the tab page number (for mouse clicks)
		let s .= '%' . (i + 1) . 'T'

		" the label is made by MyTabLabel()
		let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	" right-align the label to close the current tab page
	if tabpagenr('$') > 1
		let s .= '%=%#Title#%999X  '
	endif

	return s
endfunction

:set tabline=%!MyTabLine()
]])
