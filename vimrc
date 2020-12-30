
syntax on
set number
"set autoindent
set noshowmode
set noswapfile
set smartindent
set incsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set guifont=RobotoMono\ 12
set t_Co=256
set background=dark



" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

" plugins list
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim' 
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cocopon/pgmnt.vim'

call plug#end()

"colorscheme vim-monokai-tasty
colorscheme dracula

" lightline plugin configuration
set laststatus=2



" nerdtree plugin configuration
let g:plug_window = 'noautocmd vertical topleft new'
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>



" nerdcommenter plugin configuration
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" Color
hi Comment ctermfg=109

