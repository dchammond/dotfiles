if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
" Plug 'vim-syntastic/syntastic'
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/colorizer'
Plug 'rust-lang/rust.vim'
call plug#end()

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " Goes up directories till it finds .git/.svn/etc...

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0 "disabled
" let g:syntastic_check_on_wq = 0

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

let c_no_curly_error=1

syntax enable
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set laststatus=2
set statusline=%f
set ruler
set number
set cursorline
hi CursorLine cterm=None ctermbg=black ctermfg=blue
set ai
set si
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set hlsearch  " highlight matches
set updatetime=10
set tags=tags;
inoremap kj <esc>
vmap <C-c> "*y <CR><CR>
vmap <C-v> :!pbpaste <CR>
colorscheme codedark
