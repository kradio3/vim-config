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

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_c_include_dirs = ['/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/UIKit.framework/Headers']
"let g:syntastic_javascript_eslint_exec = 'eslint_d'

"let g:syntastic_java_javac_classpath="build/classes:lib/*.jar"


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

