" VIM 플러그인 설치 목록
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'taglist-plus'
Plugin 'bling/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'surround.vim'
Plugin 'iwataka/ctrlproj.vim'
Plugin 'Quich-Filter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'
Plugin 'HTML.zip'
Plugin 'rking/ag.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'MultipleSearch'
Plugin 'majutsushi/tagbar'
Plugin 'xuhdev/SingleCompile'
Plugin 'mhinz/vim-signify'
Plugin 'tommcdo/vim-lion'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
Plugin 'AutoComplPop'

call vundle#end()

"call plug#begin()
"	Plug 'ryanoasis/vim-devicons'
"	Plug 'scrooloose/nerdtree'
"	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"	Plug 'scrooloose/nerdcommenter'
"	Plug 'arcticicestudio/nord-vim'
"	Plug 'scrooloose/syntastic'
"	Plug 'bagrat/vim-buffet'
"	Plug 'ojroques/vim-scrollstatus'
"	Plug 'nathanaelkane/vim-indent-guides'
"	Plug 'junegunn/rainbow_parentheses.vim'
"	Plug 'vim-scripts/matchit.zip'
"	Plug 'tpope/vim-fugitive'
"	Plug 'airblade/vim-gitgutter'
"call plug#end()

set hlsearch "검색어 하이라이팅
set nu "줄번호
set autoindent "자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tab 크기 
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set list lcs=trail:·,tab:├─
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set splitbelow
set splitright


" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 구문 강조 사용
if has("syntax")
 syntax on
endif
" 컬러 스킴 사용
colorscheme jellybeans
hi search ctermbg=130
hi CursorLine cterm=NONE ctermbg=235
hi CursorLineNR cterm=bold ctermbg=235
hi VertSplit ctermfg=black ctermbg=black
hi StatusLine ctermfg=black
hi StatusLineNC ctermfg=black
hi SignColumn ctermbg=NONE

let g:loaded_matchparen = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = '%{ScrollStatus()}'
let g:buffet_show_index = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:scrollstatus_symbol_track = '─'
let g:scrollstatus_symbol_bar = '━'
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:rainbow#pairs = [['(', ')'], ['{', '}'], ['[', ']']]

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermfg=darkgreen ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=darkgreen ctermbg=237
autocmd FileType * RainbowParentheses

filetype plugin on

function! g:BuffetSetCustomColors()
	hi! BuffetTab ctermfg=190 ctermbg=234
	hi! BuffetBuffer ctermfg=85 ctermbg=234
	hi! BuffetCurrentBuffer cterm=bold ctermfg=17 ctermbg=190
	hi! BuffetActiveBuffer cterm=bold ctermfg=white ctermbg=234
endfunction

function! Term(...)
	if a:0 == 0
		term ++rows=10
	else
		execute "term ++rows=".a:1
	endif
endfunction

function! VTerm(...)
	if a:0 == 0
		vert term
	else
		execute "vert term ++cols=".a:1
	endif
endfunction

"command -nargs=? Term call Term(<f-args>)
"command -nargs=? VTerm call VTerm(<f-args>)

"command Hnw set number! list! cursorline! | IndentGuidesDisable | GitGutterDisable
"command Snw set number list cursorline | IndentGuidesEnable | GitGutterEnable

map <F9> <Esc>:NERDTreeToggle<CR>
map <C-F9> <Esc>:NERDTreeFocus<CR>
map <S-F9> <Esc>:NERDTree<CR>
imap <F9> <Esc>:NERDTreeToggle<CR>
imap <C-F9> <Esc>:NERDTreeFocus<CR>
imap <S-F9> <Esc>:NERDTree<CR>

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> "*c<Esc>"+p
imap <C-v> <Esc>"+pi
