if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 NeoBundle 'tomasr/molokai'
 NeoBundle 'Shougo/vimfiler'
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'tpope/vim-fugitive.git'
 NeoBundle 'klen/python-mode.git'
 NeoBundle 'terryma/vim-multiple-cursors'
 NeoBundle 'lervag/vimtex'

 if has("nvim")
    NeoBundle 'bling/vim-airline'
 else
    NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
 endif
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 syntax on
 set number

 set guioptions-=m  "remove menu bar
 set guioptions-=T  "remove toolbar
 set guioptions-=r  "remove right-hand scroll bar
 set guioptions-=L  "remove left-hand scroll bar

 set encoding=utf-8 
 set backspace=2    "fix backspace issue"

 set laststatus=2   "fix status

 " Set airline configuration
 let g:airline_powerline_fonts=1
 let g:airline#extensions#tabline#enabled = 1
 set noshowmode "hide mode
 if has("gui_running")
    set guifont=Hack\ 10 "set font for airline
    colors molokai
 endif

 " configure spaces
 filetype plugin indent on
 " show existing tab with 4 spaces width
 set tabstop=4
 " " when indenting with '>', use 4 spaces width
 set shiftwidth=4
 " " On pressing tab, insert 4 spaces
 set expandtab
