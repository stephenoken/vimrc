set number
syntax on
set tabstop=2
set shiftwidth=2
set nocompatible              " be iMproved, required
set clipboard=unnamed
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"My Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattly/iterm-colors-pencil'
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'othree/html5.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'unterzicht/vim-virtualenv'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'integralist/vim-mypy'
Plugin 'johngrib/vim-game-code-break'
Plugin 'parsonsmatt/intero-neovim'
Plugin 'tpope/vim-surround'
Plugin 'yggdroot/indentline'

"Theme
colorscheme subtle_light
let g:airline_powerline_fonts = 1

let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_rust_src_path = '/Users/stephenokennedy/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
let g:ycm_python_binary_path = 'python'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
filetype plugin on
set omnifunc=syntaxcomplete#Complete
setlocal omnifunc=necoghc#omnifunc

" Sysntatic Settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set hidden

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pycodestyle', 'mypy']
let g:syntastic_python_mypy_args = "--check-untyped-defs --ignore-missing-imports"
let g:syntastic_python_pycodestyle_args = "--ignore=E305,E302,E501,W291,E266,E303,W293,E261"
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
" Own shortcuts
map :tree :NERDTree
map <F8> :NERDTreeToggle<CR>
map <C-G> :YcmCompleter GoTo<CR>
" Split management
map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>
map <C-H> <C-W><C-H>
set splitbelow
set splitright
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set tags=./tags;$HOME
