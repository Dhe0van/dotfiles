" Var
set number 
set cursorline
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
set mouse=a

" Tab
noremap <M-t> :tabnew<return> 
noremap <M-l> :tabn<return> 
noremap <M-h> :tabp<return> 
noremap <M-k> :tabr<return> 
noremap <M-j> :tabl<return> 
noremap <M-w> :tabc<return> 

" Swap Tab
noremap <M-Right> :+tabm<return>
noremap <M-Left> :-tabm<return>

" Resize
noremap <C-h> :vertical resize +3<return>
noremap <C-l> :vertical resize -3<return>
noremap <C-j> :resize -3<return>
noremap <C-k> :resize +3<return>

" make use of ALT key
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor

" Shortcut
noremap <C-s> :w<return> 
noremap t :term<return>
cmap <C-s> source %<return> 
map <C-x> :%!xclip -sel clip<return>
inoremap jj <Esc>
map <C-m> :set mouse=a<return>
map <M-m> :set mouse=""<return>

" Plugins list
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'sainnhe/sonokai'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-python/python-syntax'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mboughaba/i3config.vim'
Plug 'morhetz/gruvbox'
"Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'turbio/bracey.vim'

call plug#end()

" *lightline
set laststatus=2

" Colorscheme
source ~/.vim/colorscheme/sonokai_color.vim
"source ~/.vim/colorscheme/gruvbox_color.vim

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

" *i3config-vim
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
