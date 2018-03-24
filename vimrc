"==========vundle config==========
set nocompatible                            " 去除VI一致性,必须要添加
filetype off                                " 必须要添加
set rtp+=/opt/share/vim/vimfiles/vimplugin/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'               " 插件管理器
Plugin 'matrix.vim--Yang'                   " 黑客帝国屏幕字符流效果
Plugin 'taglist.vim'                        " 代码结构
Plugin 'The-NERD-tree'                      " 文件管理
Plugin 'bling/vim-airline'                  " 状态栏
Plugin 'vim-airline/vim-airline-themes'     " 状态栏主题
Plugin 'a.vim'                              " 头文件和源文件切换
Plugin 'tomasr/molokai'                     " 配色 molokai
Plugin 'msanders/snipmate.vim'              " 快速代码段
Plugin 'majutsushi/tagbar'                  " 文件的结构 函数 与taglist.vim类似
Plugin 'nathanaelkane/vim-indent-guides'    " 缩进关联显示
"Plugin 'Valloric/YouCompleteMe'            " 代码补全 与7.4的vim不兼容


call vundle#end()               " 必须

filetype plugin indent on       " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
" ==========end vundle config ==========

"Show line number,command,status linne and so on
set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\

"Turn off annoyingerror sound
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent

"Files,backups and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=uft-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

"NERDTree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>

"airline
set laststatus=2             "永远显示状态栏
set t_Co=256                "在windows中用xshell连接打开vim可以显示色彩
let g:airline_theme='luna'

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>

" Indent Guides
" auto run
let g:indent_guides_enable_on_vim_startup=1
" start level
let g:indent_guides_start_level=2
" clorl size
let g:indent_guides_guide_size=1
" shortcut key
:nmap <silent> <Leader> i <Plug>IndentGuidesToggle


"Gvim config
if has("gui_running")
    colorscheme solarized
endif
set guifont=DejaVu\ Sans\ mono\ 15
set guioptions=aegic

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"Vimgdb debugging use
set previewheight=10
run macros/gdb_mappings.vim
set asm=0
set gdbprg=gdb
set splitbelow
set splitright

