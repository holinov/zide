set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/airblade/vim-gitgutter.git'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'https://github.com/majutsushi/tagbar.git'

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

autocmd vimenter * if argc() != 0 || exists("s:std_id") | TagbarToggle | endif
nmap <C-m> :TagbarToggle<CR>

