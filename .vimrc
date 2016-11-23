set mouse=a
set relativenumber
set number
set expandtab
set shiftwidth=2
set softtabstop=2
execute pathogen#infect()
syntax on
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:jsx_ext_required = 0
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'jinja' : 1,
      \ 'javascript.jsx' : 1,
      \}
imap <C-esc> <esc>:q<CR>
nmap <C-esc> :q<CR>

"The same color for start and end tags
hi link xmlEndTag xmlTag

"JSCS fix commans
function! JscsFix()
  "Save current cursor position"
  let l:winview = winsaveview()
  "Pipe the current buffer (%) through the jscs -x command"
  % ! jscs -x
  "Restore cursor position - this is needed as piping the file"
  "through jscs jumps the cursor to the top"
  call winrestview(l:winview)
endfunction
command! JscsFix :call JscsFix()

"Run the JscsFix command just before the buffer is written for *.js files"
"autocmd BufWritePre *.js JscsFix

"imap <F7> <esc>:JscsFix<CR>mzgg=G`z
"nmap <F7> :JscsFix<CR>mzgg=G`z

imap <F7> <esc>mzgg=G`z
nmap <F7> mzgg=G`z

imap <F2> <esc>:NERDTreeFocus<CR>
nmap <F2> :NERDTreeFocus<CR>

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:syntastic_java_javac_classpath="build/classes:lib/*.jar"


"CtrlP
let g:ctrlp_map = '<c-p>'
set wildignore+=*/node_modules/*

"highlight search matches
set hlsearch
