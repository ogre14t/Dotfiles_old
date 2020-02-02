set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'yggdroot/indentline'    " show indent lines
Plugin 'tpope/vim-fugitive'     " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-surround'
" surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plugin 'ycm-core/YouCompleteMe' " Auto completion
Plugin 'airblade/vim-gitgutter' " Places diff icons in the gutter
Plugin 'jiangmiao/auto-pairs'   " Auto closing tags
Plugin 'preservim/nerdcommenter' " Allows for commenting out multiple rows. Usage: <leader>c<space>
Plugin 'mattn/emmet-vim'        "emmet html completion
Plugin 'vim-syntastic/syntastic' " Checks syntax on each save
Plugin 'nvie/vim-flake8'        "Checks PEP 8 formatting
Plugin 'jmcantrell/vim-virtualenv' "Allows activation and deac of virtenv 
" Usage: :VirtualEnvDeactivate
" :VirtualEnvList
" :VirtualEnvActivate <Name of virtenv>
" :VirtualEnvActivate <tab> for tab completion
" :help virtualenv
Plugin 'vim-airline/vim-airline' "Status bar for vim
Plugin 'scrooloose/nerdtree'
" The NERDTree is a file system explorer for the Vim editor. Using this plugin, users can visually browse complex directory hierarchies, quickly open files for reading or editing, and perform basic file system operations.
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colors
colorscheme desert 
syntax enable

" Layout
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent
set expandtab
set number
set relativenumber
set showcmd
set cursorline
set showmatch
set wrap 
set lbr

" Searching
set incsearch
set hlsearch

" Scripts
let g:ycm_autoclose_preview_window_after_completion=1 "Autoclose the youcompleteme window once done
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" Goes to the definition of the current word (space g)
let python_highlight_all = 1
let mapleader= "\<Space>" " change the leader to the spacebar
