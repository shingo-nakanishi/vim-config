"------------------------------------------------------------------------------------"
" キーバインド
"------------------------------------------------------------------------------------"
" omni補完　キーバインド変更
imap <C-f> <C-x><C-o>
map <C-c><C-n> :cn<CR>
map <C-c><C-p> :cp<CR>

" ヤンクで検索
map qqq@ /<C-r>"<CR>
" コマンド履歴
map qqq: q:
" 検索履歴
map qqq/ q/

if has("gui_running")
  map <C-k> :tabprevious<CR>
  map <C-j> :tabnext<CR>
endif
