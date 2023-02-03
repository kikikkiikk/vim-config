syntax on
highlight LineNR ctermfg=gray
"""" Enable Plug-Vim: vim plugin manager
set nu
set guicursor=i:ver50-ncvCursor
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/LeaderF'
Plug 'Chiel92/vim-autoformat'
call plug#end()


"""" Basic Behavior

"set number              " show line numbers
"set wrap                " wrap lines
"set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on MacOS X)
"set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw screen only when we need to
"set showmatch           " highlight matching parentheses / brackets [{()}]
"set laststatus=2        " always show statusline (even with only single
"window)
"set ruler               " show line and column number of the cursor on right
"side of statusline
""set visualbell          " blink cursor on error, instead of beeping


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
" nmap j gj
" nmap k gk
"
"
" """" Vim Appearance
"
" " put colorscheme files in ~/.vim/colors/
" colorscheme slate      " good colorschemes: murphy, slate, molokai, badwolf,
" solarized
"
" " use filetype-based syntax highlighting, ftplugins, and indentation
" syntax enable
" filetype plugin indent on
"
"
" """" Tab settings
"
" set tabstop=4           " width that a <TAB> character displays as
" set expandtab           " convert <TAB> key-presses to spaces
" set shiftwidth=4        " number of spaces to use for each step of
" (auto)indent
" set softtabstop=4       " backspace after pressing <TAB> will remove up to
" this many spaces
"
" set autoindent          " copy indent from current line when starting a new
" line
" set smartindent         " even better autoindent (e.g. add indent after '{')
"
"
" """" Cursor motion settings
" set scrolloff=3
"
"
" """" Search settings
"
" set incsearch           " search as characters are entered
" set hlsearch            " highlight matches
"
" " turn off search highlighting with <CR> (carriage-return)
" nnoremap <CR> :nohlsearch<CR><CR>
"
"
" """" Miscellaneous settings that might be worth enabling
"
" "set cursorline         " highlight current line
" "set background=dark    " configure Vim to use brighter colors
" "set autoread           " autoreload the file in Vim if it has been changed
" outside of Vim
"
"


set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:airline_theme='murmur'  " murmur配色不错

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if has("autocmd")
	au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
	au InsertEnter,InsertChange *
				\ if v:insertmode == 'i' | 
				\   silent execute '!echo -ne "\e[5 q"' | redraw! |
				\ elseif v:insertmode == 'r' |
				\   silent execute '!echo -ne "\e[3 q"' | redraw! |
				\ endif
	au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
noremap <F11> :!g++ %:p;./a.out;rm ./a.out<CR>
