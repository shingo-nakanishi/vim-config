"------------------------------------------------------------------------------------"
" 自作コマンド
"------------------------------------------------------------------------------------"
command Setphp set filetype=php
command Setjavascript set filetype=javascript
command Sethtml set filetype=html

" y や dした後にfcなどすればよい
" copy to clipboard
if has("unix") && match(system("uname"),'Darwin') != -1 " mac
  " http://www.mail-archive.com/vim-latex-devel@lists.sourceforge.net/msg00773.html
  nnoremap fc :call system("pbcopy", @")<CR>
  nnoremap fp :r! pbpaste<CR>
elseif has('win32unix') " cygwin
  nnoremap fc :call system("putclip", @")<CR>
  nnoremap fp :r! getclip<CR>
endif


