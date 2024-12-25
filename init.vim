:set number
:set relativenumber
:set mouse=a
:set autoindent
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set smarttab
:set encoding=UTF-8
:set visualbell
:set scrolloff=5

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} 
Plug 'https://github.com/folke/tokyonight.nvim' " theme
Plug 'https://github.com/Mofiqul/vscode.nvim' " theme
Plug 'https://github.com/projekt0n/github-nvim-theme' " theme 
Plug 'https://github.com/romgrk/barbar.nvim' " Tab bar
Plug 'https://github.com/nvim-tree/nvim-web-devicons' "  for file icons
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " highlight
Plug 'https://github.com/Mofiqul/dracula.nvim'
Plug 'https://github.com/bluz71/vim-moonfly-colors' "theme
Plug 'https://github.com/nvimdev/dashboard-nvim'





call plug#end()

"colorscheme tokyonight-night
"colorscheme vscode
"colorscheme github_dark
colorscheme moonfly


" Tagbar

nmap <F6> :TagbarToggle<CR>

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"




" **************Tab config begin****************
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Goto pinned/unpinned buffer
"                          :BufferGotoPinned
"                          :BufferGotoUnpinned

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restore buffer
nnoremap <silent>    <A-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-s-p>  <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bn <Cmd>BufferOrderByName<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

"****************Tag config end*************************





"tab click outofill
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>" 


"***************Highlight config begin************************
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "python" },  -- Languages to install
  highlight = {
    enable = true,              -- Enable syntax highlighting
    additional_vim_regex_highlighting = false, -- Disable Vim's regex highlighting
  },
  indent = {
    enable = true               -- Enable Treesitter-based indentation
  }
}
EOF

highlight CocErrorSign ctermfg=red guifg=red
highlight CocWarningSign ctermfg=yellow guifg=yellow
highlight CocHintSign ctermfg=blue guifg=blue
highlight CocInfoSign ctermfg=green guifg=green

"*******************Highligt config end*************************

" Open terminal in a horizontal split
nnoremap <silent> <C-a> :belowright split<CR>:terminal<CR>i 
autocmd TermClose * if !v:event.status | exe 'bdelete! '..expand('<abuf>') | endif




