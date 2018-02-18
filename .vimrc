if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
call plug#end()
syntax enable
set number
set cursorline
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
colorscheme codedark
