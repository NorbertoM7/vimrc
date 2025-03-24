" ===========================
" Basic Vim Configuration
" ===========================

" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Enable relative line numbers
set relativenumber

" Set indentation for Python
set tabstop=4       " Number of spaces a <Tab> counts for
set shiftwidth=4    " Auto-indent amount for Python
set expandtab       " Use spaces instead of tabs
set autoindent      " Auto-indent new lines
set smartindent     " Smarter indentation
filetype plugin indent on  " Enable filetype-specific indentation

" Enable search enhancements
set ignorecase      " Case-insensitive search
set smartcase       " Case-sensitive if uppercase is used
set hlsearch        " Highlight search results
set incsearch       " Incremental search

" Enable mouse support
set mouse=a

" Enable persistent undo (remembers undo history after closing)
set undofile
set undodir=~/.vim/undo

" Enable better command-line completion
set wildmenu
set wildmode=longest:full,full

" Show matching brackets when cursor is over one
set showmatch

" Set the status line to always be visible
set laststatus=2

" Enable color scheme
" colorscheme desert

" ===========================
" Python-Specific Enhancements
" ===========================

" Set Python virtual environment if using one
let g:python3_host_prog = expand('~/.pyenv/versions/neovim/bin/python3')

" Enable automatic PEP 8 formatting on save (requires black)
"autocmd BufWritePre *.py execute ':Black'

" ===========================
" Plugins (Optional)
" ===========================

" If using Vim-Plug for plugin management, include:
"   - vim-plug must be installed first
"   - Run `:PlugInstall` inside Vim after adding plugins

" call plug#begin('~/.vim/plugged')
" Plug 'dense-analysis/ale'        " Linting
" Plug 'psf/black', { 'branch': 'main' }  " Auto-formatting
" Plug 'vim-python/python-syntax'  " Enhanced Python syntax
" Plug 'vim-airline/vim-airline'    " Status bar enhancement
" call plug#end()

nnoremap <F1> :!clear && python % && [-f output.pdf] && cmd.exe /c start output.pdf<CR>
set termguicolors
colorscheme chatgpt
