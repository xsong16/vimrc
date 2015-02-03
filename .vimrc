filetype on
set nocompatible
set number
syntax enable
set background=dark
colorscheme solarized
set t_Co=256
set autoindent
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set hls 
set smartindent
set nobackup
set showmatch
set iskeyword+=_,$,@,%,#,-
set confirm
set magic
filetype plugin indent on
let g:mapleader = ","
" 设置状态栏风格
let g:Powerline_colorscheme='solarized256'
" 禁止折行
set nowrap
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 高亮当前行和列
set cursorline
set cursorcolumn
" 高亮搜索结果
set hlsearch
set encoding=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  
set fileencodings=utf-8,ucs-bom,chinese

" 配置indexer的自动调用tags
let g:indexer_ctagsCommandLineOptions="--languages=php -R"

" 打开文件时恢复位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 设置缩进对齐
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1


let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

let g:DoxygenToolkit_licenseTag=s:licenseTag
let g:DoxygenToolkit_authorName="Yang Xian, yangxian16@gmail.com" 

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

" tagbar设置
let tagbar_right=1
nmap wm :TagbarToggle<CR>
let tagbar_compact=1

" NERDTree设置
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
nmap wn :NERDTreeToggle<CR>

" MiniBufExplorer设置
map <C-S-o> :MBEbn<cr>
map <C-S-i> :MBEbp<cr>
