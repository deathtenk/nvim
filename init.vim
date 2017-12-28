set clipboard=unnamed
set nocompatible              " be iMproved, required
filetype off                  " required
set mouse=a

" Clojure Syntax
syntax on
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim', { 'do': ':UpdateRemotePlugins' }
Plugin 'tpope/vim-commentary'
" Plugin 'jebberjeb/clojure-socketrepl.nvim'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/deoplete.nvim'
Plugin 'clojure-vim/async-clj-omni'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'neovim/node-host'
Plugin 'paredit.vim'
" Plugin 'snoe/nvim-parinfer.js'
Plugin 'snoe/clj-refactor.nvim'

call vundle#end()

" Use deoplete.
call deoplete#enable()

" Parinfer
" let g:parinfer_preview_cursor_scope = 0
" let g:sexp_enable_insert_mode_mappings = 0
" let g:parinfer_mode = "paren"

let g:deoplete#enable_at_startup = 1
"deoplete clojure config
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
