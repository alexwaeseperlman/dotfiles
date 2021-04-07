set laststatus=2
set t_Co=256

call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'wellle/targets.vim'
Plug 'lervag/vimtex'

call plug#end()
let mapleader = " "

let g:python_highlight_all = 1

set number relativenumber

autocmd vimenter * ++nested colorscheme gruvbox
nnoremap <leader>nt :NERDTreeToggle<CR>

autocmd vimenter * wincmd 1

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
set tabstop=4
set shiftwidth=0

set list

imap <c-space> <C-O><Plug>(asyncomplete_force_refresh)
let g:gruvbox_contrast_dark = 'hard'

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

let g:NERDTreeGitStatusShowIgnored = 1

set mouse=a
nnoremap <SPACE> <Nop>

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
nnoremap <C-l> <Esc>
vnoremap <C-l> <Esc>

let g:vimtex_compiler_latexmk = { 'build_dir' : 'build' }
