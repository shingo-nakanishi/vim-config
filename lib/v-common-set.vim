"set autoindent                   "新しい行のインデントを現在行と同じにする
set hidden
set wildmode=list:longest        "vimのコマンドを補完
set nu                           "行番号表示
set showcmd                      "コマンドを表示
set hlsearch                     "検索文字をハイライト
set tags=tags;                   "親をたどってtagsを探す
set ignorecase                     "小文字の検索でも大文字も見つかるようにする
set smartcase                      "ただし大文字も含めた検索の場合はその通りに検索する

"------------------------------------------------------------------------------------"
" タブ幅の設定
"------------------------------------------------------------------------------------"
"タブ可視化
"set list
"set listchars=tab:..
" expandtabはタブをスペースに変える
"set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"------------------------------------------------------------------------------------"
"初期メッセージ
"------------------------------------------------------------------------------------"
if has("gui_running")
  set shortmess+=I
endif

"------------------------------------------------------------------------------------"
" vim起動時に前回の行で開く
"------------------------------------------------------------------------------------"
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif

"------------------------------------------------------------------------------------"
"ステータスライン
"------------------------------------------------------------------------------------"
set laststatus=2                  "ステータスラインを常に表示

function! GetB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return String2Hex(c)
endfunction
" :help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
func! Nr2Hex(nr)
  let n = a:nr
  let r = ""
  while n
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunc
" The function String2Hex() converts each character in a string to a two
" character Hex string.
func! String2Hex(str)
  let out = ''
  let ix = 0
  while ix < strlen(a:str)
    let out = out . Nr2Hex(char2nr(a:str[ix]))
    let ix = ix + 1
  endwhile
  return out
endfunc

"ステータスラインに文字コードと改行文字を表示する
" set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']['.&ft.']'}\ %F%=%l,%c%V%8P
if winwidth(0) >= 120
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %l,%c%V%8P
else
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\ %l,%c%V%8P
endif

"set statusline=%{GetB()}
