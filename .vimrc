set number relativenumber
syntax on
set expandtab
set incsearch
set nospell
set backspace=indent,eol,start
set scrolloff=4
" set up plugins:


set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wombat256.vim'
Plugin 'shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'lervag/vimtex'
Plugin 'dpelle/vim-languagetool'
call vundle#end()
filetype indent plugin on

" nerdtree setup:
" autocmd VimENter * NERDTree | wincmd p
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
autocmd BufWinEnter * silent NERDTreeMirror
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" color scheme:
colorscheme wombat256mod
let g:airline_theme='wombat'

"automatically deletes all trailing whitespace and newlines at end of file on
"save
autocmd BufWritePre * %s/\s\+$//e
set splitright


" key mapping:
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-n>  deoplete#manual_complete()

" set vimtex:
let g:tex_flavor = "latex"
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_grammar_textidote = {
            \ 'jar': '/opt/textidote/textidote.jar',
            \ 'args': '--check en --ignore sh:seclen,sh:nobreak',
            \}
let g:vimtex_quickfix_mode=0
autocmd FileType tex nnoremap <silent> <F6> :VimtexCompile<CR>


"set languagetool
autocmd FileType text setlocal spell spelllang=en_us,de_de
autocmd FileType text set spellcapcheck=

