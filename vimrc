syntax on
set number
set noshowmode
set noswapfile
set incsearch
set t_Co=256
set background=dark
" set list lcs=tab:\|\
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab 

" Tab
noremap<C-t> :tabnew<return>
noremap<C-l> :tabn<return>
noremap<C-h> :tabp<return>
noremap<C-k> :tabr<return>
noremap<C-j> :tabl<return>
noremap <C-a> :tabc<return>
noremap <C-S>t :term<return>

map <C-s> :w<return>
cmap <C-s> source %<return>
cmap <C-x> %!xclip -sel clip<return>

" Automatically add closing
inoremap {<CR> {<CR>}<Esc>ko
inoremap {<Space><Space> {}<Esc>i
inoremap <<Space><Space> <><Esc>i
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" exit normal mode
inoremap jj <Esc>

" Custom snippets
inoremap cpp; #include <iostream><return>using namespace std;<return><return>int main() {<return><return>}<Esc>ki<Tab>
inoremap pas; begin<return><return><C-w>end.<Esc>ki<Tab>

" plugins list
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim' 
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'turbio/bracey.vim'
Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

if has('termguicolors')
  set termguicolors
endif

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_better_performance = 1
colorscheme sonokai

" Lighline
set laststatus=2
let g:lightline = {'colorscheme' : 'sonokai'}

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

" emmet vim
let g:user_emmet_leader_key='<C-K>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
