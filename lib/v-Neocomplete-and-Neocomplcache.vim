"------------------------------------------------------------------------------------"
"Neocomplete & Neocomplcache
"------------------------------------------------------------------------------------"
" 条件を満たせばNeoComplete、満たさないときはNeoComplcacheを使う
if has('lua') && v:version >= 703 && has('patch885')
  NeoBundle "Shougo/neocomplete.vim"
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 1
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
	let g:neocomplcache_enable_auto_select = 1
else
  NeoBundle 'Shougo/neocomplcache.vim'
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplcache.
  let g:neocomplcache_enable_at_startup = 1
  " Use smartcase.
  let g:neocomplcache_enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplcache_min_syntax_length = 1
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	let g:neocomplcache_enable_auto_select = 1
endif
