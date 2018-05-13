if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
" Plug 'vim-syntastic/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " Goes up directories till it finds .git/.svn/etc...

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0 "disabled
" let g:syntastic_check_on_wq = 0

syntax enable
set backspace=indent,eol,start
set laststatus=2
set statusline=%f
set ruler
set number
set cursorline
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set hlsearch  " highlight matches
set updatetime=100
inoremap kj <esc>
vmap <C-c> "*y <CR><CR>
vmap <C-v> :!pbpaste <CR>
colorscheme codedark
