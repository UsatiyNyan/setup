set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
syntax on
set number relativenumber
set hls 

call plug#begin('~/.vim/plugged')
" https://github.com/romainl/flattened
Plug 'romainl/flattened'

" https://github.com/ayu-theme/ayu-vim
Plug 'ayu-theme/ayu-vim'

" https://github.com/tyrannicaltoucan/vim-deep-space
Plug 'tyrannicaltoucan/vim-deep-space'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" https://github.com/ycm-core/YouCompleteMe.git
Plug 'ycm-core/YouCompleteMe'
call plug#end()

set background=dark
set termguicolors
colorscheme deep-space

" display lightline
set laststatus=2
set noshowmode

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
