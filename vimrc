syntax on
set number
"set autoindent
set noshowmode
set noswapfile
set smartindent
set incsearch
set tabstop=2 softtabstop=4 shiftwidth=4 noexpandtab
set shiftwidth=4
set guifont=RobotoMono\ 12
set t_Co=256
set background=dark
" set list lcs=tab:\|\


" Custom Keybinding
" Inser mode
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i

" Command Line mode
cmap <C-t> tabnew<return>
cmap <C-w> tabc<return>
cmap <C-l> tabn<return>
cmap <C-h> tabp<return>
cmap <C-k> tabr<return>
cmap <C-j> tabl<return>
cmap <C-s> source %<return>


" Automatically Enter, indent, add closing 
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>

" Automatically add closing
inoremap [<Space><Space> []<Esc>i
inoremap {<Space><Space> {}<Esc>i
inoremap (<Space><Space> ()<Esc>i
inoremap <<Space><Space> <><Esc>i

inoremap jj <Esc>


" plugins list
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim' 
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cocopon/pgmnt.vim'
Plug 'mattn/emmet-vim'
Plug 'turbio/bracey.vim'

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


" emmet vim
let g:user_emmet_leader_key='<C-K>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall



" Color
hi Comment ctermfg=109
