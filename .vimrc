set t_Co=256
colorscheme torte
set nu
set cindent
set cursorline
set ai
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White
hi CursorColumn cterm=none ctermbg=DarkMagenta ctermfg=White
set cursorcolumn
" set mouse=a
map <F4> : set nu!<BAR>set nonu?<CR>
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
		        return "\<Right>"
	else
			    return a:char
	endif
endfunction
