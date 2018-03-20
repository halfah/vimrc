
" StartUp{{{
filetype indent plugin on

" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache.vim-master{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编码{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置编码,解决乱码问题
set langmenu=zh_CN.UTF-8 
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim "仅在windows的Gvim使用
source $VIMRUNTIME/menu.vim "仅在windows的Gvim使用
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 界面{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
" 设置缩进
set tabstop=4 shiftwidth=4 softtabstop=4
set smartindent         "智能对齐  
set lines=50 columns=180
set expandtab           "表示Tab自动转换成空格  
set autoindent          "表示换行后自动缩进
set smartindent
" 折叠
set foldmethod=indent
set foldlevel=4

" 显示行号
set number
syntax enable
syntax on
" 样式
colorscheme desert
set backspace=2           " 设置退格键可用
set hls                   "高亮查找
set showmatch                     "设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set incsearch                        "在程序中查询一单词，自动匹配单词的位置；如查询desk单词，当输到/d时，会自动找到第一个d开头的单词，当输入到/de时，会自动找到第一个以ds开头的单词，以此类推，进行查找；当找到要匹配的单词时，别忘记回车 

set winaltkeys=no " 设置 alt 键不映射到菜单栏
set whichwrap=b,s,<,>,[,]
"win下剪切板
set clipboard+=unnamed
" Tagbar"
let g:tagbar_width=35
let g:tagbar_autofocus=1
set guioptions-=m " 隐藏菜单栏
set guioptions-=M " 隐藏菜单栏
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=b " 隐藏底部滚动条
"以下两行无反应！！
hi TabLine term=underline cterm=bold ctermfg=9 ctermbg=4
hi TabLineSel term=bold cterm=bold ctermbg=Red ctermfg=yellow
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 快捷键{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab切换
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-h> gT
nnoremap <M-l> gt
nnoremap <M-t> :tabnew<Enter>
" 正常模式下 alt+j,k,h,l 调整分割窗口大小
nnoremap <M-S-j> :resize +5<cr>
nnoremap <M-S-k> :resize -5<cr>
nnoremap <M-S-h> :vertical resize -5<cr>
nnoremap <M-S-l> :vertical resize +5<cr>
" 插入模式移动光标 alt + 方向键
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>
" 正常模式下换行
nnoremap <S-Enter> i<Enter><esc>
" 插入模式下行复制
" inoremap <C-p> <esc>yypA
" 行移动
nnoremap <M-j> ddp
nnoremap <M-k> dd2kp
" 选择模式下移动和复制
vnoremap <M-j> dp
vnoremap <M-k> d2kp
vnoremap <C-p> ykp 
"   0号寄存器复制
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p
inoremap <c-v> <C-r>0
" 分屏窗口移动, way to move between windows
nnoremap <Leader>p "0p
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
" go to home and end using capitalized directions
noremap H ^
noremap L $
"" Keep search pattern at the cEnter of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz emmit
"map <C-y> <C-y>,
"map <C-d> <C-y>d
" <C-y>d
" 修改leader键
" 
let mapleader = "\<space>"
"let g:mapleader ="\<space>"
"not work!nmap <S><Enter> o<Esc>
"快速退出，保存
nmap <Leader>w :w<Enter>
nmap <Leader>q :q<Enter>
" 复制当前文件/路径到剪贴板
nmap <leader>fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap <leader>fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

" 设置切换Buffer快捷键"
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>
" zz 替换 Esc
inoremap <C-s> <Esc>
" 将 ; 绑定到 : 用于快速进入命令行
nnoremap ; :


" 设置NerdTree
" quickfix
map <F2> :cw<CR>
 
"启动vim自动打开NERDTree
"autocmd VimEnter * NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"
" Tagbar"
nmap <F6> :TagbarToggle<CR>
" =>/vim-jsbeautify{{{ 
nmap <Leader>a :Tabularize /
vmap <Leader>a :Tabularize /
if exists(":Tabularize")
      nmap <Leader>a= :Tabularize /=<CR>
      vmap <Leader>a= :Tabularize /=<CR>
      nmap <Leader>a: :Tabularize /:\zs<CR>
      vmap <Leader>a: :Tabularize /:\zs<CR>
endif
" }}}
" =>/vim-jsbeautify{{{ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>f :call JsxBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <Leader>F :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <Leader>f :call JsxBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <Leader>F :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <Leader>F :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <Leader>F :call HtmlBeautify()<cr>
autocmd FileType htm noremap <buffer> <Leader>F :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <Leader>F :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <Leader>F :call RangeJsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <Leader>f :call RangeJsxBeautify()<cr>
autocmd FileType json vnoremap <buffer> <Leader>F :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <Leader>F :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <Leader>F :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <Leader>F :call RangeCSSBeautify()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 模板{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" js模板

autocmd BufNewFile *.js 0r $vim/template/js.tpl

if has("win32")
	let $VIMFILES=$VIM.'/vimfiles'
else
	let $VIMFILES=$HOME.'/.vim'
endif

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 快速调试{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在浏览器预览 for win32
function! ViewInBrowser(name)
let file = expand("%:p")
exec ":update " . file
let l:browsers = {
    \"ff":"C:/Program Files (x86)/Mozilla Firefox/Firefox.exe",
    \"op":"D:/WebDevelopment/Browser/Opera/opera.exe",
    \"ie":"C:/progra~1/intern~1/iexplore.exe",
    \"ie6":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie6",
    \"ie7":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie7",
    \"ie8":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie8",
    \"ie9":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie9",
    \"iea":"D:/WebDevelopment/Browser/IETester/IETester.exe -all"
\}
let htdocs='E:\\apmxe\\htdocs\\'
let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
if strpos == -1
   exec ":silent !start ". l:browsers[a:name] ." file://" . file
else
    let file=substitute(file, htdocs, "http://127.0.0.1:8090/", "g")
    let file=substitute(file, '\\', '/', "g")
    exec ":silent !start ". l:browsers[a:name] file
endif
endfunction
nmap <F4>cr :call ViewInBrowser("cr")<CR>
nmap <F4>ff :call ViewInBrowser("ff")<CR>
nmap <F4>op :call ViewInBrowser("op")<CR>
nmap <F4>ie :call ViewInBrowser("ie")<CR>
nmap <F4>ie6 :call ViewInBrowser("ie6")<CR>


" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vundle插件{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=C:\ProgramGreen\Vim\vimfiles\bundle\Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Vundle list here
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/ctags.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'majutsushi/tagbar'
" Plugin 'valloric/youcompleteme'
Plugin 'gregsexton/MatchTag' "html标签高亮
Plugin 'mxw/vim-jsx'   "jsx标签高亮
Plugin 'jelera/vim-javascript-syntax'  "js标签高亮
Plugin 'Raimondi/delimitMate'        " 括号智能匹配
Plugin 'Chiel92/vim-autoformat'       " 格式化
" Plugin 'ternjs/tern_for_vim'
Plugin 'maksimr/vim-jsbeautify' 
Plugin 'jiangmiao/auto-pairs' 
Plugin 'godlygeek/tabular' 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

"	dsource _vimrc_bundles  
"	source $VIMRUNTIME/mswin.vim
behave mswin
 
" }}}
