" plugin management
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'LunarWatcher/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/VimCompletesMe'
Plug 'beloglazov/vim-online-thesaurus'
Plug 'chrisbra/Colorizer'
Plug 'dense-analysis/ale'
Plug 'dylanaraps/wal.vim'
Plug 'easymotion/vim-easymotion'
Plug 'farmergreg/vim-lastplace'
Plug 'gentoo/gentoo-syntax'
Plug 'georgewitteman/vim-fish'
Plug 'ggandor/vim-srt-sync'
Plug 'itchyny/lightline.vim' | Plug 'mengelbrecht/lightline-bufferline' | Plug 'maximbaz/lightline-ale'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'
Plug 'liuchengxu/vim-clap'
Plug 'machakann/vim-highlightedyank'
Plug 'machakann/vim-sandwich'
Plug 'mbbill/undotree'
Plug 'michaeljsmith/vim-indent-object'
Plug 'qpkorr/vim-bufkill'
Plug 'svermeulen/vim-easyclip'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/SearchComplete'
Plug 'wellle/targets.vim'
Plug 'wesQ3/vim-windowswap'
call plug#end()

" colours, syntax, highlighting
set background=dark
colorscheme wal
filetype plugin indent on
syntax enable
set spelllang=en,cs
set number
set relativenumber
" set cursorline
" set cursorcolumn
set backspace=indent,eol,start
set autoindent
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set list
set listchars=tab:\|·,nbsp:␣,trail:•,extends:⟩,precedes:⟨ ",eol:¬

" basic stuff
set nohlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamedplus
set mouse=a
set nocompatible
set path+=**
set splitbelow
set splitright
autocmd VimResized * wincmd =
set wildmenu
set showcmd
set notimeout ttimeout ttimeoutlen=200
set visualbell
set t_vb=
set hidden
set confirm
set updatetime=0
set ttyfast
set lazyredraw

" temp files
set dir=~/.cache
set directory=~/.cache
set backupdir=~/.cache
set undofile
set undodir=~/.cache
set history=1000

" tabs are spaces
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" leader keys
let mapleader=';'
let maplocalleader=','

" lightline
set noshowmode
let g:lightline = {
\ 'colorscheme': 'wal',
\ 'component_function': {
\   'modified': 'LightLineModified',
\   'gitbranch': 'LightLineFugitive',
\   'fileformat': 'LightlineFileformat',
\   'filetype': 'LightlineFiletype',
\   'readonly': 'LightlineReadonly',
\ },
\ 'component_expand': {
\   'buffers': 'lightline#bufferline#buffers',
\   'linter_checking': 'lightline#ale#checking',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok',
\ },
\ 'component_type': {
\   'buffers': 'tabsel',
\   'linter_checking': 'left',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error',
\   'linter_ok': 'left',
\ },
\ 'tabline': {
\   'left': [['buffers']],
\   'right': [[ ]],
\ },
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
\   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
\              [ 'lineinfo' ],
\              [ 'percent' ],
\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\}

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:lightline#bufferline#min_buffer_count = 2
let g:lightline#bufferline#unnamed = '[]'
let g:lightline#bufferline#unicode_symbols = 0
let g:lightline#bufferline#filename_modifier = ''
let g:lightline#bufferline#show_number = '2'
let g:lightline#bufferline#number_separator = ':'

nmap <A-1> <Plug>lightline#bufferline#go(1)
nmap <A-2> <Plug>lightline#bufferline#go(2)
nmap <A-3> <Plug>lightline#bufferline#go(3)
nmap <A-4> <Plug>lightline#bufferline#go(4)
nmap <A-5> <Plug>lightline#bufferline#go(5)
nmap <A-6> <Plug>lightline#bufferline#go(6)
nmap <A-7> <Plug>lightline#bufferline#go(7)
nmap <A-8> <Plug>lightline#bufferline#go(8)
nmap <A-9> <Plug>lightline#bufferline#go(9)
nmap <A-0> <Plug>lightline#bufferline#go(10)

function! LightlineFileformat()
 return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFiletype()
 return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightlineReadonly()
 return &readonly && &filetype !~# '\v(help|vimfiler|unite)' ? '' : ''
endfunction
function! LightLineModified()
 return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '✎ ' : &modifiable ? '' : '-'
endfunction
function! LightLineFugitive()
 if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
  let _ = fugitive#head()
  return strlen(_) ? ' '._ : ''
 endif
 return ''
endfunction

" *tree
noremap U <Esc>:UndotreeToggle<CR>

" autopairs
let g:AutoPairsCompatibleMaps = 0

" gitgutter
set foldtext=gitgutter#fold#foldtext()

" easyclip
nnoremap gm m
let g:EasyClipUseSubstituteDefaults = 0
let g:EasyClipAutoFormat = 0
nmap <a-p> <plug>EasyClipToggleFormattedPaste

" easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
map \ <Plug>(easymotion-prefix)
map <a-f> <Plug>(easymotion-prefix)

" easyalign
xmap <a-a> <Plug>(EasyAlign)*
nmap <a-a> <Plug>(EasyAlign)*

" maximizer
noremap <A-m> <Esc>:MaximizerToggle<CR>
inoremap <A-m> <Esc>:MaximizerToggle<CR>a
let g:maximizer_set_default_mapping = 0

" indentLine
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0
autocmd Filetype man,diff IndentLinesDisable

" windowswap
let g:windowswap_map_keys = 0
noremap <A-x> <Esc>:call WindowSwap#EasyWindowSwap()<CR>
inoremap <A-x> <Esc>:call WindowSwap#EasyWindowSwap()<CR>

" vim-commentary
if &filetype ==# '' | setlocal commentstring=#\ %s | endif

" goyo
let g:goyo_width = '80'
let g:goyo_height = '90%'
let g:goyo_linenr = '0'
noremap <a-g> :Goyo<CR>

" limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" targets
let g:targets_nl = 'nN'

" VimCompletesMe
set omnifunc=syntaxcomplete#Complete
let g:vcm_s_tab_behavior = 1
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd FileType vim let b:vcm_tab_complete='vim'
autocmd FileType markdown,txt,tex,plaintex,rmd setlocal complete+=k~/.words

" deoplete
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option({
"   \ 'max_list': 20,
"   \ 'smart_case': v:true,
"   \ 'auto_complete_delay': 50,
"   \ 'sources': {
"     \ '_': [],
"     \ },
"   \ 'min_pattern_length': 2,
"   \ })
" inoremap <silent><expr> <Tab>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <silent><expr> <S-Tab>  pumvisible() ? "\<C-p>" : "\<TAB>"

" Ale
autocmd Filetype zsh ALEDisable
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \}
" let g:ale_fix_on_save = 1

" custom functions
" trim trailing whitespaces
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

" key bindings
" command mode from anywhere
noremap <A-;> <Esc>:
inoremap <A-;> <Esc>:
" reload config
noremap <A-R> <Esc>:source ~/.config/nvim/init.vim<CR>
inoremap <A-R> <Esc>:source ~/.config/nvim/init.vim<CR>a
" update plugins
noremap <A-F> <Esc>:PlugUpgrade \| PlugInstall \| PlugClean \| PlugUpdate<CR>
" toggle relative numbers
noremap <A-r> <Esc>:set relativenumber!<CR>
inoremap <A-r> <Esc>:set relativenumber!<CR>
" write
noremap <A-S> <Esc>:w !doas tee %<CR>
inoremap <A-S> <Esc>:w !doas tee %<CR>a
" splits
noremap <A-o> <Esc>:vsplit<CR>
inoremap <A-o> <Esc>:vsplit<CR>
noremap <A-O> <Esc>:split<CR>
inoremap <A-O> <Esc>:split<CR>
noremap <A-j> <C-W><C-J>
inoremap <A-j> <Esc><C-W><C-J>
noremap <A-k> <C-W><C-K>
inoremap <A-k> <Esc><C-W><C-K>
noremap <A-h> <C-W><C-H>
inoremap <A-h> <Esc><C-W><C-H>
noremap <A-l> <C-W><C-L>
inoremap <A-l> <Esc><C-W><C-L>
noremap <A-[> <Esc>:vertical resize -5<CR>
inoremap <A-[> <Esc>:vertical resize -5<CR>a
noremap <A-]> <Esc>:vertical resize +5<CR>
inoremap <A-]> <Esc>:vertical resize +5<CR>a
noremap <A-e> <Esc>:Clap files! ~<CR>
inoremap <A-e> <Esc>:Clap files! ~<CR>a
noremap <A-{> <Esc>:resize -1<CR>
inoremap <A-{> <Esc>:resize -1<CR>a
noremap <A-}> <Esc>:resize +1<CR>
inoremap <A-}> <Esc>:resize +1<CR>a
noremap <A-=> <Esc><C-W>=
inoremap <A-=> <Esc><C-W>=a
" tabs & buffers
noremap <A-J> <Esc>:bnext!<CR>
inoremap <A-J> <Esc>:bnext!<CR>
noremap <A-K> <Esc>:bprev!<CR>
inoremap <A-K> <Esc>:bprev!<CR>
noremap <A-w> <Esc>:Clap buffers<CR>

" filetype-specific bindings
augroup tex_bindings
  autocmd!
  autocmd Filetype tex,plaintex setlocal spell
  autocmd Filetype tex,plaintex nnoremap <localleader>p :silent !zathura "%:p:r.pdf" &<CR>
  autocmd Filetype tex,plaintex nnoremap <localleader>c :silent !tex-to-pdf "%:p" >/dev/null &<CR>
  autocmd Filetype tex,plaintex inoremap <A-D> \documentclass{article}<CR><CR>\begin{document}<CR><CR>\end{document}<Up><Up><Up>
  autocmd Filetype tex,plaintex inoremap <A-P> \usepackage[]{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-C> \usepackage[czech]{babel}<CR>\usepackage[T1]{fontenc}<CR>\usepackage{csquotes}<CR>\DeclareQuoteAlias{german}{czech}<CR>\MakeOuterQuote{"}<CR>
  autocmd Filetype tex,plaintex inoremap <A-F> \usepackage{fontspec}<CR>\setmainfont{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-Q> \usepackage[backend=biber,style=verbose-trad1,giveninits=true,dashed=false]{biblatex}<CR>\addbibresource{}<CR>\DeclareNameAlias{default}{family-given}<CR>\DeclareNameAlias{sortname}{family-given}<CR>\newcommand{\familynameformat}[1]{\MakeUppercase{#1}}<CR>\renewcommand{\mkbibnamefamily}{\familynameformat}
  autocmd Filetype tex,plaintex inoremap <A-i> \textit{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-b> \textbf{}<Left>
  " autocmd Filetype tex,plaintex inoremap <A-u> \underline{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-S> \section{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-s> \subsection{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-I> \begin{itemize}<CR>\item{}<CR>\end{itemize}<Up><Left>
  autocmd Filetype tex,plaintex inoremap <A-E> \begin{enumerate}<CR>\item{}<CR>\end{enumerate}<Up><Left>
  autocmd Filetype tex,plaintex inoremap <A-t> <Esc>A<CR>\item{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-c> \footcite[]{}<Left><Left><Left>
  autocmd Filetype tex,plaintex inoremap <A-f> \footnote{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-L> \label{}<Left>
  autocmd Filetype tex,plaintex inoremap <A-l> \ref{}<Left>
augroup END
augroup srt_bindings
  autocmd!
  autocmd BufRead *.srt nnoremap <localleader>p :silent !mpv "%:p:r".* >/dev/null 2>&1  &<CR>
augroup END
