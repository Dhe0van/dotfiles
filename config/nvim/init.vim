set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

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
noremap <silent> <M-t> :tabnew<return> 
noremap <silent> <M-l> :tabn<return> 
noremap <silent> <M-h> :tabp<return> 
noremap <silent> <M-k> :tabr<return> 
noremap <silent> <M-j> :tabl<return> 
noremap <silent> <M-w> :tabc<return> 

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
cmap <C-s> source %<return> 
map <C-x> :%!xclip -sel clip<return>
inoremap jj <Esc>
map <silent> <C-m> :set mouse=a<return>
map <silent> <M-m> :set mouse=""<return>

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
Plug 'brooth/far.vim'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vimlab/split-term.vim'
"Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'turbio/bracey.vim'

call plug#end()

" *nvim-tree.lua
source ~/.config/nvim/plugins_conf/nvim-tree.vim

" *telescope.nvim
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>

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

" *far-vim
let g:far#enable_undo=1

" *split-term
noremap <silent> t :Term<enter>

" For navigating between terminal buffer and another window buffer
" Source: https://www.reddit.com/r/neovim/comments/9sm1bp/how_to_switch_between_windows_in_terminal_mode/ (u/mtszyk)
if has('nvim')
  augroup vimrc_term
    autocmd!
    autocmd WinEnter term://* nohlsearch
    autocmd WinEnter term://* startinsert

    autocmd TermOpen * tnoremap <buffer> <C-h> <C-\><C-n><C-w>h
    autocmd TermOpen * tnoremap <buffer> <C-j> <C-\><C-n><C-w>j
    autocmd TermOpen * tnoremap <buffer> <C-k> <C-\><C-n><C-w>k
    autocmd TermOpen * tnoremap <buffer> <C-l> <C-\><C-n><C-w>l
    autocmd TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
  augroup END
endif
