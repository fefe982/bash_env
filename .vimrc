" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
"set background=light
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible
"
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
" set mouse=v		" Enable mouse usage (all modes)
set history=400
set number
" set fdm=indent
filetype plugin on
filetype indent on
set ai
set ci
set shiftwidth=4
set tabstop=4
set autoread 
"set cursorline
"set nocursorcolumn
set expandtab
map <F7> "+y
map <F8> "+x
map <F9> "+p

"colorscheme dante
"colorscheme wombat
set guifont=Courier\ New\ 10
"set guifont=DejaVu\ Sans\ YuanTi\ Mono\ 10
nmap tl :TlistToggle <CR> 
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
"let Tlist_File_Fold_Auto_Close=1

let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

let g:miniBufExplMapCTabSwitchBufs = 1
nnoremap <silent> <F3> :Grep<CR>

filetype plugin indent on
set completeopt=longest,menu

highlight Cursor guibg=Green guifg=NONE
highlight NonText guibg=grey80
highlight Constant gui=NONE guibg=grey95
highlight Special gui=NONE guibg=grey95
highlight Comment term=bold ctermfg=6
highlight Search NONE
highlight Search term=reverse cterm=reverse

"set fileencoding=cp936
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
 ghlight Normal guibg=grey90
source /etc/vim/vimrc.local
endif

set laststatus=2
"set makeprg=LD_LIBRARY_PATH=/search/speech/lib64\ ~/compiler-package/llvm/tools/clang/tools/scan-build/scan-build\ --use-analyzer\ ~/bin/clang\ make
autocmd Filetype c,cpp set equalprg=astyle
command! W w
command! Q q
nnoremap <UP> gk
nnoremap <DOWN> gj
inoremap <UP> <C-O>gk
inoremap <DOWN> <C-O>gj
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl,sql,lua normal zR
set fencs=utf8,gb18030,latin1
" set foldlevel=99
