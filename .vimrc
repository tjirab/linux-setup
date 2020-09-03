" .vimrc configuration

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Jump between matching brackets with %
set matchpairs+=<:>

" Display different types of white spaces and control chars
set list
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" PLUGINS
"call plug$begin('~/.vim/plugged')
"Plug 'vim-airline/vim-airline'
"call plug#end()
