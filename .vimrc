set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/vim-gradle'
Plugin 'mikelue/vim-maven-plugin'

""" VIM snippets
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

"""""""""""
"" NERDTree config
"""""""""""

" autocmd vimenter * NERDTree

" open NERDTree if on files opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if NERDTree is only one left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" toggle NERDTree
map <C-n> :NERDTreeToggle<CR>


"""""""""""
"" Tagbar config
"""""""""""
nmap <C-m> :TagbarToggle<CR>

""""""""""
"" CtrlP config (fuzzy search)
""""""""""

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"""""""""
"" Eclim, YouCompleteMe and Vim snippets settings
"""""""""
let g:EclimCompletionMethod = 'omnifunc'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" UltiSnips split
let g:UltiSnipsEditSplit="vertical"

""""""
"" ag.vim config
let g:ag_working_path_mode="r"
