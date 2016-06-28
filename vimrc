execute pathogen#infect()

syntax enable
set background=dark

colorscheme molokai
let g:molokai_original = 1

filetype on

let mapleader=","       " leader is comma

set tags+=.tags

set nowrap              " disable line wrapping

set whichwrap+=<,>,[,]  " left and right arrow keys can move up/down lines

set tabstop=4           " number of visual spaces per TAB

set softtabstop=4       " number of spaces in tab when editing

"set expandtab          " tabs are spaces

"set relativenumber      " enable relative line numbers
set number              " show line numbers

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

set noswapfile

"set spell spelllang=en_us

"** Nerdtree Settings **
map <C-n> :NERDTreeTabsToggle<CR>
if has("gui_running")
    autocmd VimEnter * NERDTree   "Open nerdtree by default
    autocmd VimEnter * wincmd p   "Move cursor off nerdtree into the buffer window
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " exit if nerdtree is the last window

"** vim-airline settings **
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Just show the filename (no path) in the tab
"let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
"set guifont=Roboto\ Mono\ Thin\ for\ Powerline:h11
if has('win32')
elseif has('mac')
    set guifont=Roboto\ Mono\ Light\ for\ Powerline:h11
elseif has('unix')
    set guifont=Roboto\ Mono\ Light\ for\ Powerline\ 7
endif

" Rainbow paretheses always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Indent-guides configuration
"let g:indent_guides_enable_on_vim_startup = 1

"Training....
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Tab navigation: Alternatively use
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap H gT
nnoremap L gt

set tags=.tags;
nnoremap <leader>t :!ctags -R --exclude=.git -f .tags .<CR>
nnoremap <leader>. :CtrlPTag<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>


"
"Notes:
"
"Next time dos files are not working try this:
"http://stackoverflow.com/questions/3852868/how-to-make-vim-show-m-and-substitute-it
"
