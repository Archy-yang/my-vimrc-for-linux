filetype off

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

" those 4 are all for snipmate-snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'SirVer/ultisnips'
Bundle 'chrisyue/vim-snippets'
"Bundle 'garbas/vim-snipmate' " original
Bundle 'gregsexton/MatchTag'
Bundle 'othree/html5.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/XDebug-DBGp-client-for-PHP'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'docteurklein/vim-symfony'
Bundle 'shawncplus/phpcomplete.vim'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'junegunn/vim-easy-align'
Bundle 'skwp/vim-html-escape'
Bundle 'terryma/vim-multiple-cursors'

" syntax
Bundle 'evidens/vim-twig'
Bundle 'pangloss/vim-javascript'

Bundle 'scrooloose/syntastic'

" github vim scripts mirrors
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'

filetype plugin indent on

" common configuration
set number
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set hidden
set incsearch
set laststatus=2
set wildmenu
set wildmode=list:longest
set wildignorecase
set completeopt=longest,menu,preview
set noswapfile
set scrolloff=999
set t_Co=256
set iskeyword-=-$
set foldmarker={,}
set foldmethod=marker

colorscheme pablo

" for vim-php-namespace
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

vnoremap <silent> <Enter> :EasyAlign<cr>

" w!! to sudo save
cmap w!! %!sudo tee > /dev/null %

autocmd BufWritePost *.php,*.twig,*.yml execute 'silent !php-cs-fixer fix % > /dev/null'
autocmd BufWritePost *.php,*.twig,*.yml execute 'e'
autocmd BufWritePost *.php,*.twig,*.yml execute 'syntax on'

let g:symfony_enable_shell_mapping=1
let g:UltiSnipsDontReverseSearchPath=1

let g:syntastic_php_checkers=['php', 'phpmd']

let g:airline#extensions#tabline#enabled = 1

" let g:debuggerPort = 10000
