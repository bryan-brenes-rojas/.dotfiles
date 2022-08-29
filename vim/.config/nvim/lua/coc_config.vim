let g:coc_disable_startup_warning = 1
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-angular',
  \ 'coc-css',
  \ 'coc-emmet',
  \ 'coc-explorer',
  \ 'coc-html',
  \ 'coc-prettier',
  \ 'coc-sh',
  \ 'coc-spell-checker',
  \ 'coc-sql',
  \ 'coc-tslint',
  \ 'coc-tsserver',
  \ 'coc-solargraph',
  \ 'coc-sumneko-lua',
  \ 'coc-pyright',
  \ 'coc-rust-analyzer',
  \ 'coc-snippets',
\ ]

function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
   \ coc#pum#visible() ? coc#pum#next(1):
   \ <SID>check_back_space() ? "\<Tab>" :
   \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" use <CR> to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)
nnoremap <silent> <leader>di :call CocAction('diagnosticInfo')<CR>
nnoremap <silent> <leader>dl :Telescope coc diagnostics<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
nmap <silent> gr :Telescope coc references<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>o :CocOutline<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
  else
     call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>fa :Format<CR>
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,typescriptreact,javascript setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>.  <Plug>(coc-codeaction)
nmap <leader>.  :Telescope coc file_code_actions<CR>
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"Explorer
nmap <silent><space>e :CocCommand explorer<CR>
" Close explorer if it is the last window
" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'CocCommand explorer' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Only organize import if filetype is .ts
augroup BEFOREWRITE
  autocmd!
	autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx call OrganizeImportAndFormat()
augroup END

" Organize import (coc) then format (coc)
function! OrganizeImportAndFormat()
  :OR
  :Format
endfunction

" snippets
let g:coc_snippet_next = '<tab>'
