if exists("g:vimrcdebug")
	if g:vimrcdebug | echo "Running gvimrc" | endif
endif

" Unmap printing functionality
if has('gui_running')
	macmenu File.Print key=<nop>
endif
noremap <M-P> :CtrlP<CR>
noremap <M-p> :CtrlP<CR>
noremap <D-P> :CtrlP<CR>
noremap <D-p> :CtrlP<CR>

" Alt-Arrow to swtich between splits
noremap <M-Up> <C-W><Up><C-W>_
noremap <M-Down> <C-W><Down><C-W>_
noremap <M-Left> <C-W><Left><C-W>_
noremap <M-Right> <C-W><Right><C-W>_
