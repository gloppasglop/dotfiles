" Powerline
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

syntax enable               " enable syntax highlighting
set cursorline          " highlight the current line
set path+=**
" set cursorcolumn          " highlight the current line
" set background=dark   " darker color scheme
set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set relativenumber              " show line numbers
set showcmd             " show selection metadata
set showmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
set scrolloff=5         " show at least 5 lines above/below
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins

set laststatus=2

" tabs and indenting
set autoindent          " auto indenting
set smartindent         " smart indenting
set expandtab           " spaces instead of tabs
set tabstop=2           " 2 spaces for tabs
set shiftwidth=2        " 2 spaces for indentation


" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·


" bells
set noerrorbells        " turn off audio bell
set visualbell          " but leave on a visual bell

" search
set nohlsearch            " highlighted search results
set showmatch           " show matching bracket

