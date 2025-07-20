" Obsidian Vimrc Configuration
" Enable relative line numbering
set number relativenumber

" Kanagawa-inspired color settings (for supported environments)
" Note: Some of these may only work in certain environments or with additional plugins
" Cursor settings
set cursorline
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50

" Search highlighting
set hlsearch
set incsearch

" Kanagawa-inspired remaps (using colors that resemble the palette)
" These commands will only have visual effect if your environment supports them
" and you have appropriate CSS snippets

" More Vim functionality
set ignorecase
set smartcase
set scrolloff=5
set sidescrolloff=5

" Better navigation
nnoremap j gj
nnoremap k gk
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Quick editing convenience
nnoremap <space>w :w<CR>
nnoremap <space>q :q<CR>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Keep visual selection when indenting
vnoremap < <gv
vnoremap > >gv

" Move lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Quick access to beginning and end of lines
nnoremap H ^
nnoremap L $

" Clear search highlighting with ESC
nnoremap <silent> <Esc> :noh<CR>

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Some additional Kanagawa-inspired key bindings
" (these are examples, customize as needed)
nnoremap <leader>fo :Obsidian open<CR>
nnoremap <leader>fb :Obsidian back<CR>
nnoremap <leader>ff :Obsidian forward<CR>
nnoremap <leader>fs :Obsidian search<CR>
