syntax on
colorscheme molokai
"set columns=999 lines=999
set guifont=Cousine\ 11
hi ExtraWhitespace guibg=#403D3D
match ExtraWhitespace /\s\+$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
hi Visual guibg=#555555
hi Normal guibg=#000000
set go-=T  "remove toolbar
