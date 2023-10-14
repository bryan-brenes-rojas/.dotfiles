return {
	"mhinz/vim-startify",
	config = function()
		-- Directory where session are stored
		vim.g.startify_session_dir = "~/.vim/session"

		-- Change to the root git directory
		vim.g.startify_change_to_vcs_root = 1

		-- Save session before SLoad and before exit
		vim.g.startify_session_persistence = 1 -- default 0

		-- Delete empty buffers and quit
		vim.g.startify_enable_special = 0

		vim.cmd([[
set sessionoptions=curdir,folds,help,tabpages,winpos

" Sections to be shown in the startup page
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]

let s:os = system("echo -n $(uname)")
if s:os == "Linux"
  let g:startify_bookmarks = [
              \ { 'v': '~/.vimrc' },
              \ { 'z': '~/.zshrc' },
              \ { 'a': '~/.alacritty.yml' },
              \ ]
else
    let g:startify_bookmarks = [
                \ { 'v': '~/.vimrc' },
                \ { 'z': '~/.zshrc' },
                \ { 'a': '~/.alacritty.yml' },
                \ { 'o': '~/Documents/okr-notes/h2-2021.md' },
                \ { 'f': '~/Documents/SamaRepos/sama-accounts' },
                \ { 'b': '~/Documents/SamaRepos/sama-accounts-backend' },
                \ { 'i': '~/Documents/SamaRepos/infra-rabbitburrow' },
                \ { 's': '~/Documents/SamaRepos/sh3' },
                \ ]
endif
]])
	end,
}
