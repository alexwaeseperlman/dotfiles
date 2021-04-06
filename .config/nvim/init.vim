set laststatus=2
set t_Co=256

call plug#begin('~/.config/nvim/plugged')

Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'othree/yajs.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mg979/vim-visual-multi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'vim-python/python-syntax'
Plug 'wellle/targets.vim'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'lervag/vimtex'

call plug#end()

let g:python_highlight_all = 1

set number relativenumber

autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd vimenter * wincmd 1

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set tabstop=4
set shiftwidth=0

set list

imap <c-space> <C-O><Plug>(asyncomplete_force_refresh)

let g:gruvbox_contrast_dark = 'medium'

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

let g:NERDTreeGitStatusShowIgnored = 1

set mouse=a
nnoremap <SPACE> <Nop>
let mapleader = " "

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>grf <Plug>(coc-references)
nmap <leader>grn <Plug>(coc-rename)
nmap <leader>gt :call CocAction('doHover')<CR>

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

inoremap <C-l> <Esc>

let g:vimtex_compiler_latexmk = { 'build_dir' : 'build' }
