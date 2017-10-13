" Functional changes

"Map ESC key to 'jk'
inoremap jk <ESC>
"Not sure of this one
let mapleader = ","

"Identation, syntax and encoding
filetype plugin indent on
syntax on
set encoding=utf-8

"Set to highlight search results
set hlsearch

"Show line numbers
set number

"Map the ':' to ';'
noremap ; :

" vim-plug (https://github.com/junegunn/vim-plug) settings 
" Automatically install vim-plug and run PlugInstall if vim-plug not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'
Plug 'sickill/vim-pasta'
Plug 'justinmk/vim-sneak'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'
Plug 'gcavallanti/vim-noscrollbar'

Plug 'sts10/vim-mustard'

Plug 'vim-ruby/vim-ruby',          { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-rails',            { 'for': ['ruby', 'eruby'] }
Plug 'nelstrom/vim-markdown-folding',{ 'for': 'markdown' }
Plug 'dhruvasagar/vim-table-mode', { 'for': ['csv', 'xls', 'xlsx'] }
Plug 'junegunn/goyo.vim',          { 'for': ['markdown', 'html', 'text'] }
Plug 'tpope/vim-markdown',         { 'for': 'markdown' }

Plug 'othree/html5.vim'
Plug 'sts10/vim-closed-captioning', { 'for': 'srt' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()

set statusline=%f
set statusline+=\ %h%w%m%r
set statusline+=%-17(%{exists('g:loaded_fugitive')?fugitive#statusline():''}\%)
set statusline+=%=
set statusline+=\ %{noscrollbar#statusline(9,'_','=')}
set statusline+=\ %P/%L
set statusline+=\ 

