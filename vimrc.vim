""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neobundle 用(ここから)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Neobundleを始める準備
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ここにインストールしたいプラグインのリストを書く
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'tpope/vim-endwise.git'

NeoBundleFetch 'Shougo/neobundle.vim'

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Neobundleを終わる準備
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
filetype plugin on
filetype indent on
autocmd FileType * setlocal formatoptions-=ro
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neobundle 用(ここまで)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 分割したファイルを読み込み
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
so $HOME/my-config/vim-config/lib/v-common-set.vim
so $HOME/my-config/vim-config/lib/v-Neocomplete-and-Neocomplcache.vim
so $HOME/my-config/vim-config/lib/v-NERDTree.vim
so $HOME/my-config/vim-config/lib/v-Rsense.vim
so $HOME/my-config/vim-config/lib/v-minibufexpl.vim
so $HOME/my-config/vim-config/lib/v-my-command.vim
so $HOME/my-config/vim-config/lib/v-syntax.vim
so $HOME/my-config/vim-config/lib/v-omni.vim
so $HOME/my-config/vim-config/lib/v-flodmethod.vim
so $HOME/my-config/vim-config/lib/v-net-command.vim

