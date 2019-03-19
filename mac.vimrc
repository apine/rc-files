" My vimrc file.
" Maintainer:	Che-Pin Chang <cpchang (at) gmail.com>
" Last change:	2019, Feb
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"		for MS-DOS and Win32:  $VIM\_vimrc	    

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" vim-plug Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug (For Mac/Linux users)
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" For Windows users
" call plug#begin('~/vimfiles/bundle')
call plug#end()

"Set mapleader
let mapleader = ","

"Fast reloading of the .vimrc
map <Leader>s :w<CR>:source ~/.vimrc<cr>
""Fast editing of .vimrc
map <Leader>e :e! ~/.vimrc<cr>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set number
set autoindent		" always set autoindenting on
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else 
	set backup		" keep a backup file
	set backupdir=$HOME/.vim/backup
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set smartcase	" ignore case if search pattern is all lowercase,case-sensitive otherwise
set wrapscan	" Make search wrap around
set ai            " always set autoindenting on
" set soft tab and >> width
set softtabstop=3
set ts=3
set shiftwidth=3
" UTF-8 environment
" start with utf-8 encoding
set encoding=utf-8
" start a new files with utf-8 encoding
set fileencoding=utf-8
" all possible encodings
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
" output encoding to terminal 
set termencoding=utf-8 
" 將 unicode 中不確定的字符表示成雙字符( only works under utf-8 environment)
set ambiwidth=double

set fileformat=unix

set cindent
set hls
set background=dark

set ci
"
" Don't use Ex mode, use Q for formatting
map Q gq

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete 
endif " has("autocmd")

" easy paste mode toggle
set pastetoggle=<LEADER>p

" tab shortcut mapping 
map <C-h> <ESC>:tabp<CR>
map <C-l> <ESC>:tabn<CR>
map <C-t>n <ESC>:tabnew<CR><ESC>:e 
         
set showtabline=2

" Fast Big5 Mode
noremap <LEADER>b :e ++enc=big5<CR>:set tenc=big5<CR>

" 256-color scheme
set t_Co=256
syntax on
colorscheme gruvbox

" show match {,[,( in yellow color
set showmatch
hi MatchParen ctermbg=YELLOW

" Highlight HTML tag in php file
let php_htmlInStrings=1
set cursorline 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable folding, I find it very useful
set foldenable
set foldmethod=marker
set foldmarker={,}
"set foldclose=all
"set foldmethod=syntax
"set foldopen=all 

" Set a high foldlevel to default open all folds
set foldlevel=10000

" 3 lines of column for fold showing, always
set foldcolumn=3

" Easily open and close folds
nnoremap <SPACE> za

" NERD Tree 
nnoremap <silent> <F5> :NERDTreeToggle<CR>
" ^G Characters prefixing directory and file names in Nerdtree issue workaround
" https://www.reddit.com/r/vim/comments/a4yzyt/g_characters_prefixing_directory_and_file_names/
let g:NERDTreeNodeDelimiter = "\u00a0"

"" taglist
"let Tlist_Ctags_Cmd="/usr/bin/ctags"
"let Tlist_Auto_Update = 1
"let Tlist_Use_Right_Window = 1
"nnoremap <silent> <F6> :TlistToggle<CR>
"
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"
"" --- SuperTab
"let g:SuperTabDefaultCompletionType = "context"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Source Explorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"" // The switch of the Source Explorer
"nmap <F7> :SrcExplToggle<CR>
"
"" // Set the height of Source Explorer window
"let g:SrcExpl_winHeight = 10
"
"" // Set 100 ms for refreshing the Source Explorer
"let g:SrcExpl_refreshTime = 100
"
"" // Set "Enter" key to jump into the exact definition context
"let g:SrcExpl_jumpKey = "<ENTER>"
"
"" // Set "Space" key for back from the definition context
"let g:SrcExpl_gobackKey = "<SPACE>"
"
"" // In order to Avoid conflicts, the Source Explorer should know what plugins
"" // are using buffers. And you need add their bufname into the list below
"" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "NERD_tree_1",
"        \ "Source_Explorer"
"    \ ]
"" // Enable/Disable the local definition searching, and note that this is not
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
"" // It only searches for a match with the keyword according to command 'gd'
""let g:SrcExpl_searchLocalDef = 1
"
"" // Let the Source Explorer update the tags file when opening
"let g:SrcExpl_isUpdateTags = 0
"
"" // Use program 'ctags' with argument '--sort=foldcase -R' to create or
"" // update a tags file
"" // Set "<F12>" key for updating the tags file artificially
"let g:SrcExpl_updateTagsKey = "<F12>" 
