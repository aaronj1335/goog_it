let g:base = "file:///Users/astacy/code/goog_it/google.html"

function! SyncToAppliance()
	w
	if @% =~ 'Project.vim'
		return
	else
		execute '!open ' . g:base
		"execute '!open ' . g:base . 'harvest/'
		"execute '!open ' . g:base . 'explore/'
		"execute '!open ' . g:base . 'explore/qa2.qa.local:kchee-B'
		"execute '!open ' . g:base . 'explore/datamaster:big12filetypes'
		"execute '!open ' . g:base . 'explore/qa2.qa.local:kchee-B\#siq-dialogs-explorers-0-file_types'
		"execute '!open ' . g:base . 'explore/qa2.qa.local:kchee-B\#siq-dialogs-explorers-0-queries'
		"execute '!open ' . g:base . 'explore/datamaster:big12filetypes\#siq-dialogs-explorers-0-size'
		"execute '!open ' . g:base . 'explore/datamaster:big12filetypes\#siq-dialogs-explorers-0-queries'
		"execute '!open ' . g:base . 'test_marquee/'
	endif
endfunction

nnoremap <leader>l oconsole.log();<esc>hi
nnoremap <leader><s-l> Oconsole.log();<esc>hi
nnoremap <leader>r :call<space>SyncToAppliance()<CR>

au BufNewFile,BufRead *.js inoremap <buffer> <tab> <c-p>

set ft=javascript
set syntax=html
