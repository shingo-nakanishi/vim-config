"------------------------------------------------------------------------------------"
" Rsense
"------------------------------------------------------------------------------------"
let g:rsenseHome = "~/opt/rsense-0.3"
let g:rsenseUseOmniFunc = 1

if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
