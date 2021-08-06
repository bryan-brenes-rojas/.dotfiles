call plug#begin()
 
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
" Para integrar fzf con vim
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'chrisbra/colorizer'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-test/vim-test'
Plug 'voldikss/vim-floaterm'
call plug#end()

colorscheme gruvbox

" -------------------------------------------
" Para mostrar la barra de estado (lightline)
" -------------------------------------------
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ }
      \ }
" -------------------------------------------

" Para no mostrar los indicadores de estado por defecto
set noshowmode

" Para no crear archivos swap
set noswapfile

" -------------------------------------------
" comments con nerdcommenter
" -------------------------------------------
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" -------------------------------------------

" -------------------------------------------
"  Nerdtree
" -------------------------------------------
" Para cerrar vim cuando solo quede abierto nerdtree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Abrir nerdTree cuando se abre vim con un directorio
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" -------------------------------------------

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --     exclude-standard']

" emmet config
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" nerdTree 
map <c-n> :NERDTreeToggle <cr>

set cursorline
set cursorcolumn

let mapleader=' '

" Para hacer toggle a los indicadores de linea y columna
nnoremap <leader>c :set cursorcolumn! cursorline!<CR>

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set smartindent

imap <c-l> <Esc>
vmap <c-l> <Esc>

" para wrap text
set wrap
" Para no cortar palabras con el wrap
set linebreak

"para colocar los números de línea
set number

"para que los números de línea sean relativos a la actual
set relativenumber

"resalta los matches de la búsqueda
set hlsearch

"empieza a buscar mientras escribimos la palabra
set incsearch

"ignore case cuando hace búsquedas
set ignorecase

" usar espacios en lugar de tabs
set expandtab

"1 tab = 4 espacios
set shiftwidth=2
set tabstop=2

"auto indentado
set cindent

"smart indent
set si 

set background=dark

" Open new windows on the right and below
set splitbelow splitright

" spelling
" set spell
"set spelllang=en,es

" --------------------------------  
" Remaps
" --------------------------------  

nnoremap <leader>b :Buffers <CR>
nnoremap <leader>re :reg <CR>

nnoremap <leader>rv :source $MYVIMRC <enter>
nnoremap <leader>te <c-w>b:belowright :terminal<CR>

" Para redimensionar las ventanas
" ventanas divididas horizontalmente
nnoremap <silent> <leader>- :res -10<CR>
nnoremap <silent> <leader>+ :res +10<CR>
nnoremap <silent> <leader><down> :res -10<CR>
nnoremap <silent> <leader><up> :res +10<CR>

" ventanas divididas verticalmente
nnoremap <silent> <leader>< :vertical resize -10<CR>
nnoremap <silent> <leader>> :vertical resize +10<CR>
nnoremap <silent> <leader><left> :vertical resize -10<CR>
nnoremap <silent> <leader><right> :vertical resize +10<CR>

" particionado de ventanas
nnoremap <leader>v :vs 
nnoremap <leader>h :sp 

nnoremap <leader>nh :nohlsearch<cr>
nnoremap <leader>rv :source $MYVIMRC<CR>

" moviendose entre ventanas
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

" Toggle wrap
nnoremap <leader>w :set wrap! <CR>

" Colorizer for css colors toggle
nnoremap <leader>co :ColorToggle<CR>

" Copiar hasta el final de linea
nnoremap Y y$

" Manteniendo centrado el cursor
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breack points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Agregar saltos relacionales a la lista de saltos
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==A
inoremap <C-k> <esc>:m .-2<CR>==A

" Open previous file in new tab
nnoremap <leader>tp :tabnew #<CR>

" Open current file in new tab
nnoremap <leader>tc :tabnew %<CR>

" -------------------------------------------
"  FZF
" -------------------------------------------
nnoremap <leader>l :BLines <CR>
nnoremap <leader>L :Lines <CR>
nnoremap <leader>p :FZF  <CR>
"let g:fzf_preview_window = ''
" -------------------------------------------
"
" -------------------------------------------
"  Rg
" -------------------------------------------
nnoremap <leader>s :Rg 
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case --glob '!{node_modules/*,.git/*}' " . <q-args>, 1, <bang>0)
"
" -------------------------------------------
" git fugitive
" -------------------------------------------
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>

" -------------------------------------------
" vim test
" -------------------------------------------

let test#strategy = "floaterm"
nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ts :TestSuite<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>tv :TestVisit<CR>

" -------------------------------------------
"  COC
" -------------------------------------------
let g:coc_disable_startup_warning = 1
" Configuracion por defecto (de github)
"
" TextEdit might fail if hidden is not set.
set hidden
"
" " Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" " Give more space for displaying messages.
set cmdheight=2
"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
"
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
   " Recently vim can merge signcolumn and number column into one
   set signcolumn=number
else
   set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

 " Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm.
" " <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
   inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
  else
     call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>fa :Format<CR>
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"Explorer
nmap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'CocCommand explorer' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Only organize import if filetype is .ts
autocmd BufWritePre *.ts call OrganizeImportAndFormat()

" Organize import (coc) then format (coc)
function! OrganizeImportAndFormat()
  :OR
  :Format
endfunction


" -------------------------------------------
