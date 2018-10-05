
" project-specific settings
"

"autocmd BufNewFile,BufRead */*alembic*/* set tabstop=4 expandtab
autocmd BufNewFile,BufRead */*partio*/* set tabstop=4 "expandtab
autocmd BufNewFile,BufRead */*installSystem*/* set tabstop=4 expandtab




" set guifont=FreeMono\ Bold\ 9
 colors desert

" set guifont=Bitstream\ Vera\ Sans\ Mono\ Roman\ 8
" colors default

set guifont=Monospace\ Regular\ 9

" bottom scrollbar
set guioptions+=b

set nocompatible
set showcmd
set smartindent

set laststatus=2

" highlight current line
set cursorline
set nocursorcolumn

" re-read externally-changed files
set autoread

" enable smart-case search (lowercase-only is case-insensitive, mixed-case is case-sensitive)
set ignorecase
set smartcase

" show search match while typing
set incsearch
set nohlsearch

" enable wildmenu
set wildmenu
set wildmode=list,full

" show line numbering
set nu

" disable lazy redraw (while macro execution)
set nolz

set showmatch

set nowrap
set virtualedit=

set tabstop=8
set shiftwidth=8

" set fdm=indent

" command line height
set cmdheight=2

" can switch between buffers without saving them
set hidden

" disable backup stuff
set nobackup
set nowb
set noswapfile

" last line in the file has an end-of-line
set endofline

" per-file vim config (modeline)
set ml
set mls=10

" set file format
"set ff=unix
"set ffs=unix

" use scons for make by default
set makeprg=scons


" mappings
" map <tab> :tabnext<cr>
" map <S-tab> :tabprevious<cr>
" map <C-tab> :tabnew<cr>
" map <S-C-tab> :tabclose<cr>

" do NOT strip trailing space here!
map <tab> :b 

map <S-tab> <C-W><C-W>
map <C-tab> <C-W><C-W>
map <C-cr> g]
map <A-]> g<C-]>
map <A-[> :pop<cr>
map <A-left> :bp<cr>
map <A-right> :bn<cr>

map ch :e %<.h<cr>
map cp :e %<.cpp<cr>

map cH :vsplit %<.h<cr>
map cP :vsplit %<.cpp<cr>

" command

command CFG :e ~/.vimrc
command Cfg :e ~/.vimrc

map tomaya :py sendBufferToMaya(True)<cr>

map <kEnter> :py sendBufferToMaya()<cr>
map <kPlus> :py sendBufferToMaya(True)<cr>


" menus

menu Navigate.Up\ (Page)<Tab>^B			<C-b>
menu Navigate.Up\ (Half)<Tab>^U			<C-u>
menu Navigate.Up\ (Line)<Tab>^Y			<C-y>
menu Navigate.-SEP1-				<Nop>
menu Navigate.Down\ (Line)<Tab>^E		<C-e>
menu Navigate.Down\ (Half)<Tab>^D		<C-d>
menu Navigate.Down\ (Page)<Tab>^F		<C-f>
menu Navigate.-SEP1-				<Nop>
menu Navigate.Line\ Begin<Tab>0			0
menu Navigate.Line\ First\ Char<Tab>^		^
menu Navigate.Line\ End<Tab>$			$
menu Navigate.-SEP1-				<Nop>
menu Navigate.-SEP1-				<Nop>


menu Commands.Quickfix\ Window<Tab>:cw		:cw<cr>
menu Commands.Show\ Registers<Tab>:reg		:reg<cr>
menu Commands.-SEP1-				<Nop>
menu Commands.Find\ in\ Files<Tab>:grep -ri...	:grep -ri "" ./<S-left><S-left><right>

menu C++.Switch\ to\ \.h<Tab>ch			ch
menu C++.Switch\ to\ \.cpp<Tab>cp		cp

menu C++.Split\ to\ \.h<Tab>cH			cH
menu C++.Split\ to\ \.cpp<Tab>cP		cP

" plugin docs update (general)

"helptags ~/.vim/doc


" vimya

menu Vimya.Set\ Filetype\ to\ MEL		:set ft=mel<cr>
menu Vimya.Set\ Filetype\ to\ Python		:set ft=python<cr>
menu Vimya.-SEP1-				<Nop>
menu Vimya.Send\ to\ Maya\ (All)		:py sendBufferToMaya(True)<cr>
menu Vimya.Send\ to\ Maya\ (Selected\ Lines)	:py sendBufferToMaya()<cr>
menu Vimya.-SEP2-				<Nop>
menu Vimya.Strip\ Trailing\ Whitespaces		:%s/\s\+$//<cr>



