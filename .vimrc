""""""""""""""""""""""""""""""
" set
""""""""""""""""""""""""""""""
syntax on   " syntax highlighting on
set t_Co=256    " set number of colors
set cursorline
set nocompatible
set hidden
set path+=~/project/app/**

" use ripgrep instead of terminal grep when running the :grep command
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" display line number before each line
set relativenumber number

" for search
set hlsearch
set incsearch

" when the last window will have a status line
set laststatus=2    " 2 for always

" set tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set mouse=a

" fix backspace doesn't work in insert mode
set backspace=indent,eol,start

" use gq to split lines to fit textwidth
" why 74? to fit split window
set textwidth=74

" where to find tag file
set tags+=../tags


"""""""""""""""""""""""""""""
" autocmd
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" set variable
""""""""""""""""""""""""""""""
let mapleader = ","

" disable YCM, to enable it just comment this line
" let g:loaded_youcompleteme = "1"


""""""""""""""""""""""""""""""
" key mappings
""""""""""""""""""""""""""""""
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>n :NERDTree<CR>:set relativenumber number<CR>

" mapping for formmating code(use astyle)
nnoremap <silent> <Leader>a mm:%!astyle<CR>`mmmzz

" no highlight search
nnoremap <silent> <Space><CR> :nohlsearch<CR>

" for save and exit
noremap <C-s> :w<CR>
noremap <C-q> :q<CR>
noremap <C-x> :x<CR>
noremap <Leader>z <C-w>_<C-w>\|
noremap R :source%<CR>

inoremap <C-H> <BS>
inoremap <C-J> <Del>

" for wsl
" but now wsl2 in win11 enables vim to use clipboard
" so just discard this
" " For copy code to windows clipboard
" " in visual mode, pipe the current selection to
" " terminal command clip.exe.
" " Text piped to clip.exe goes to the Windows clipboard.
" vnoremap <C-C> :w !clip.exe<CR><CR>
vnoremap <C-C> "+y

" quickly commented
noremap <C-/> I// <Esc>
vnoremap / I// <Esc>


""""""""""""""""""""""""""""""
" plugin management
""""""""""""""""""""""""""""""
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'frazrepo/vim-rainbow'
Plug 'sonph/onehalf', {'rtp': 'vim'}
Plug 'itchyny/lightline.vim'
Plug 'tabnine/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()


""""""""""""""""""""""""""""""
" configurations for vim-rainbow
""""""""""""""""""""""""""""""
let g:rainbow_active=1


""""""""""""""""""""""""""""""
" configurations for lightline
""""""""""""""""""""""""""""""
let g:lightline = {
            \ 'colorscheme': 'one',
            \ }


""""""""""""""""""""""""""""""
" configurations for onehalf
""""""""""""""""""""""""""""""
colorscheme onehalfdark
let g:airline_theme='onehalflight'


""""""""""""""""""""""""""""""
" configurations for vim-plug
""""""""""""""""""""""""""""""
let g:plug_timeout=100     " The limit of each task in seocnds

