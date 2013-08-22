"------------------------------------------------------------------------------------"
" NERDTREE
"------------------------------------------------------------------------------------"
augroup IsNotGitCommit
  autocmd!
  autocmd VimEnter * NERDTree ./
	autocmd VimEnter * wincmd p
augroup END

autocmd BufRead COMMIT_EDITMSG autocmd! IsNotGitCommit
