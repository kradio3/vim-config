set mouse=a
set relativenumber
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set noswapfile
execute pathogen#infect()
syntax on
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

imap <C-esc> <esc>:q<CR>
nmap <C-esc> :q<CR>

"The same color for start and end tags
hi link xmlEndTag xmlTag

imap <F7> <esc>mzgg=G`z
nmap <F7> mzgg=G`z

imap <F2> <esc>:NERDTreeFocus<CR>
nmap <F2> :NERDTreeFocus<CR>

" Clang complete
let g:clang_complete_auto = 0
let g:clang_use_library = 1
let g:clang_periodic_quickfix = 0
let g:clang_close_preview = 1

let g:clang_exec = '/usr/bin/clang'
let g:clang_library_path = '/usr/local/Cellar/llvm/HEAD-f735188/lib/libclang.dylib'
" End of Clang complete

"Syntastic

" Show sidebar signs.
let g:syntastic_ignore_files = ['.*']
let g:syntastic_enable_signs = 1
let g:syntastic_objc_config_file = '.clang_complete'

let g:syntastic_objc_checker = 'clang'

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_objc_remove_include_errors = 1

"CtrlP
let g:ctrlp_map = '<c-p>'
set wildignore+=*/node_modules/*

"highlight search matches
set hlsearch

"Buffer navigation using arrows
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

colorscheme molokai
hi Visual ctermbg=240
hi Normal ctermbg=0
hi Comment ctermfg=243
hi MatchParen ctermfg=208  ctermbg=240

