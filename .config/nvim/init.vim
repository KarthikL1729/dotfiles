:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set clipboard=unnamedplus
:set softtabstop=4
:set mouse=a
:set wildmenu
:set encoding=UTF-8
:set expandtab

" enable autoindents
:set smartindent
:set splitbelow
:set splitright

:set hidden

:set ignorecase
:set smartcase
:set incsearch
:set nohlsearch

syntax on

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "vim-airline-themes
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'lewis6991/gitsigns.nvim'

" Colorschemes
Plug 'https://github.com/eskilop/NorthernLights.vim'
Plug 'https://github.com/kocakosm/hilal'
Plug 'haishanh/night-owl.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'hzchirs/vim-material'
Plug 'iamcco/markdown-preview.nvim'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Fuzzy search
Plug 'junegunn/fzf'

call plug#end()

lua << EOF
require('gitsigns').setup()
EOF

" :colorscheme night-owl 

" Dark
" set background=dark
" colorscheme vim-material

" Palenight
let g:material_style='palenight'
set background=dark
colorscheme vim-material

" Oceanic
" let g:material_style='oceanic'
" :set background=dark
" :colorscheme vim-material

" Light
" set background=light
" colorscheme vim-material
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='material'

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-space>"

vmap <C-c> "+y     " Yank current selection into system clipboard
nmap <C-c> "+Y     " Yank current line into system clipboard (if nothing is selected)
nmap <C-v> "+p     " Paste from system clipboard

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :FZF<CR>
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

let &t_ut=''
set termguicolors
