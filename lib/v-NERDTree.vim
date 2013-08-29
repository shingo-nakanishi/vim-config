"------------------------------------------------------------------------------------"
" NERDTREE
"------------------------------------------------------------------------------------"
augroup IsNotGit
  autocmd!
  autocmd VimEnter * NERDTree ./
	autocmd VimEnter * wincmd p
augroup END

autocmd BufRead COMMIT_EDITMSG autocmd! IsNotGit
autocmd BufRead MERGE_MSG autocmd! IsNotGit
