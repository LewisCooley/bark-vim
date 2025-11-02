" Display line numbers
set number
" Display relative line numbers
set relativenumber

" Enable system clipboard integration (requires clipboard feature)
set clipboard=unnamedplus

" Don't wrap lines
set nowrap
" Wrap lines at word boundaries when 'wrap' is true (though 'nowrap' overrides this)
set linebreak

" Enable mouse support in all modes
set mouse=a

" Ignore case in search patterns
set ignorecase
" Override 'ignorecase' if the search pattern contains uppercase characters
set smartcase

" Number of spaces for a <Tab> character's display width
set tabstop=2
" Number of spaces used for auto-indenting and shift commands
set shiftwidth=2
" Number of spaces to insert when hitting <Tab> for soft tabs
set softtabstop=2
" Convert tabs to spaces
set expandtab

" Minimum number of screen lines to keep above and below the cursor
set scrolloff=4
" Minimum number of screen columns to keep to the left and right of the cursor
set sidescrolloff=8

" Don't highlight the current line
set nocursorline

" New windows are split below the current one
set splitbelow
" New windows are split to the right of the current one
set splitright

" Don't highlight search matches after the search command finishes
set nohlsearch

" Don't show the current mode (e.g., -- INSERT --)
set noshowmode

" Enable true color support for terminal GUI colors (Neovim equivalent is vim.opt.termguicolors = true)
set termguicolors

" Insert indents automatically
set smartindent

" Do not create a swap file
set noswapfile

" Minimum width for the number column
set numberwidth=2

" Set default file encoding
set fileencoding=utf-8

" Command-line height
set cmdheight=1

" Time in milliseconds to wait for a mapped key sequence
set timeoutlen=350


" Set the global and local leader keys to Space
let mapleader = ' '
let maplocalleader = ' '

" Disable spacebar key's default behaviour in Normal and Visual mode
nnoremap <silent> <Space> <Nop>
vnoremap <silent> <Space> <Nop>

" Set options for keymaps: silent and non-recursive
" In Vimscript, these are applied directly to each map command

" --- Basic File Operations ---

" save file (Ctrl-s)
nnoremap <silent> <C-s> :w<CR>

" save file without auto-formatting (Leader-sn)
nnoremap <silent> <leader>sn :noautocmd w<CR>

" quit file (Ctrl-q)
nnoremap <silent> <C-q> :q<CR>

" delete single character without copying into register (x)
nnoremap <silent> x "_x

" --- Scrolling and Centering ---

" Vertical scroll half page down and center (Ctrl-d)
nnoremap <silent> <C-d> <C-d>zz
" Vertical scroll half page up and center (Ctrl-u)
nnoremap <silent> <C-u> <C-u>zz

" Find and center (n/N)
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv

" --- Buffer Management ---

" Next buffer (Tab)
nnoremap <silent> <Tab> :bnext<CR>
" Previous buffer (Shift-Tab)
nnoremap <silent> <S-Tab> :bprevious<CR>
" Close buffer (Leader-x)
" NOTE: ':Bdelete' is usually provided by a plugin, using the native ':bd'
" If you want to force it, use ':bd!' (Buffer Delete force)
nnoremap <silent> <leader>x :bd!<CR>
" New empty buffer (Leader-n)
nnoremap <silent> <leader>n :enew<CR>

" --- Window Management ---

" Split vertically (Leader-v)
nnoremap <silent> <leader>v <C-w>v
" Split horizontally (Leader-h)
nnoremap <silent> <leader>h <C-w>s
" Equalize window sizes (Leader-se)
nnoremap <silent> <leader>se <C-w>=
" Close current window/split (Leader-xs)
nnoremap <silent> <leader>xs :close<CR>

" Navigate between splits (Ctrl-Up/Down/Left/Right)
nnoremap <silent> <C-Up> <C-w>k
nnoremap <silent> <C-Down> <C-w>j
nnoremap <silent> <C-Left> <C-w>h
nnoremap <silent> <C-Right> <C-w>l

" --- Tab Management ---

" New tab (Leader-to)
nnoremap <silent> <leader>to :tabnew<CR>
" Close tab (Leader-tx)
nnoremap <silent> <leader>tx :tabclose<CR>
" Next tab (Leader-tn)
nnoremap <silent> <leader>tn :tabn<CR>
" Previous tab (Leader-tp)
nnoremap <silent> <leader>tp :tabp<CR>

" --- Toggles ---

" Toggle line wrapping (Leader-lw)
nnoremap <silent> <leader>lw :set wrap!<CR>

" --- Visual Mode ---

" stay in indent mode (when indenting)
vnoremap <silent> < <gv
vnoremap <silent> > >gv

" keep last yanked when pasting (p)
vnoremap <silent> p "_dP
