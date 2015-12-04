set background=dark
colorscheme default
syntax enable               "启动配色  
runtime macros/matchit.vim   
set hlsearch 
"set paste
set noai
set nu
"filetype on                 "启用文件侦测
"filetype plugin on          "针对不同的的文件加载不同的插件 
"-----缩进
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4 
set expandtab               "输入tab时自动将其转化为空格
set smarttab                "开头4个space当成tab删除
"-----
set foldenable              "启用折叠
set foldmethod=indent       "indent 折叠方式
"用space建开启/关闭一个折叠(zR/zM 展开/关闭所以折叠, zc/zo 展开/关闭一个折叠)
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"for powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors"

"-----编码
set encoding=utf-8
set fileencodings=utf-8,gbk
set termencoding=utf-8
set fileformats=unix
"-----

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"对齐
Plugin 'Align'
"自动补全括号
Plugin 'jiangmiao/auto-pairs'
"对齐线
"Plugin 'Yggdroot/indentLine'
"Markdown
Plugin 'Mark--Karkat'
"注释和目录
Plugin 'scrooloose/nerdcommenter'
"目录树
Plugin 'scrooloose/nerdtree'
"状态栏
Plugin 'Lokaltog/vim-powerline'
"自动解析函数
Plugin 'majutsushi/tagbar'
Plugin 'taglist.vim'
"go解析
Plugin 'fatih/vim-go'
"自定义代码块
Plugin 'SirVer/ultisnips'
"补全
"(no go)
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'Valloric/YouCompleteMe'
"YouCompletMe 依赖
Plugin 'Valloric/ListToggle'
"
"Plugin 'vim-scripts/Conque-Shell'
"
"Plugin 'vim-scripts/grep.vim'
"
Plugin 'nathanaelkane/vim-indent-guides'
"
Plugin 'kien/ctrlp.vim'
"
Plugin 'dyng/ctrlsf.vim'
"
Plugin 'vim-scripts/BufLine'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"YCM Setting
let g:ycm_key_list_select_completion = [' ', ' ']
let g:ycm_key_list_previous_completion = [' ']
let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" UltiSnips Use Python 2.x
let g:UltiSnipsUsePythonVersion = 2


" vim-go custom mappings
let g:go_highlight_functions = 1
let g:go_auto_type_info = 0
let g:go_fmt_autosave = 1
let g:go_fmt_command = "gofmt"

let mapleader = ","
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_fmt_command = "goimports"

"ycm配置
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"nerdtree快捷键
nmap <F2> :NERDTreeToggle<CR>

"TagList 窗口, 开启/关闭
nmap tb :TlistClose<CR>:TagbarToggle<CR>

"Tagbar 窗口, 开启/关闭
nmap tl :TagbarClose<CR>:Tlist<CR>

"
let g:indentLine_char = '┊'
"let g:indentLine_noConcealCursor = 1
"let g:indentLine_showFirstIndentLevel = 1

"
nnoremap e c
nnoremap c e
imap <C-]> <C-o>o
imap <C-\> <C-o>:w<CR><Esc>
imap <C-l> <C-o>$
