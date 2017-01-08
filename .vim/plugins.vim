" This is the main plugin list, sourced by modules/plugins.vim
" Configuration goes in the appropriate modules/plugins/*.vim file.
" So configuration for tmux.vim would go in modules/plugins/tmux.vim.vim

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'Keithbsmiley/tmux.vim'
Plug 'benmills/vimux'

"Plug 'sickill/vim-monokai'
"Plug 'tomasr/molokai'
Plug 'blueshirts/darcula'

Plug 'vim-scripts/vim-niji'
Plug 'Lokaltog/vim-easymotion'
Plug 'PeterRincker/vim-argumentative'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }

Plug 'Wolfy87/vim-enmasse'

Plug 'embear/vim-localvimrc'
Plug 'andreimaxim/vim-io'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ivalkeen/nerdtree-execute'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'terryma/vim-multiple-cursors'
Plug 'sjl/gundo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'helino/vim-json'
Plug 'nikvdp/ejs-syntax'
Plug 'walm/jshint.vim'

Plug 'tpope/vim-fireplace'

Plug 'lambdatoast/elm.vim'
Plug 'wlangstroth/vim-racket'

" Add plugins to &runtimepath
call plug#end()
