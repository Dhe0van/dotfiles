" Var
set number 
set termguicolors
set noshowmode 
set noswapfile 
set incsearch 
set t_Co=256
set background=dark
set tabstop=8 
set softtabstop=4 
set shiftwidth=4 
set expandtab 

" Tab
noremap <M-t> :tabnew<return> 
noremap <M-l> :tabn<return> 
noremap <M-h> :tabp<return> 
noremap <M-k> :tabr<return> 
noremap <M-j> :tabl<return> 
noremap <M-w> :tabc<return> 

" Resize
noremap <C-h> :vertical resize +5<return>
noremap <C-l> :vertical resize -5<return>
noremap <C-j> :resize -5<return>
noremap <C-k> :resize +5<return>

" make use of ALT key
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor

" Shortcut
map <C-s> :w<return> 
map t :term<return>
cmap <C-s> source %<return> 
cmap <C-x> %!xclip -sel clip<return>
inoremap jj <Esc>

" Plugins list
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'sainnhe/sonokai'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-python/python-syntax'
Plug 'arzg/vim-sh'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'turbio/bracey.vim'

call plug#end()

" *sonokai
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_better_performance = 1
colorscheme sonokai

" *lighline
set laststatus=2
let g:lightline = {'colorscheme' : 'sonokai'}

" *python syntax
let g:python_highlight_all = 1

" *emmet
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-Z>'
autocmd FileType html,css EmmetInstall

" *coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<c-k>'
