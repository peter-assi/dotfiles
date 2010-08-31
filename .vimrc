"highlighting
syntax on

"bling
set background=dark
colorscheme ir_black

set showmode
"set number

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2
set shiftround
set expandtab
set autoindent

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" share buffer to osx clipboard
set clipboard=unnamed

" Settings for VimClojure
let g:clj_highlight_builtins=1      " Highlight Clojure's builtins
let g:clj_paren_rainbow=1           " Rainbow parentheses'!

" Easier use of Command-T (see http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_3))
let mapleader = "_"

" use rvm with macruby
map <Leader>r :w! <bar> !/Users/peterlind/.rvm/rubies/default/bin/ruby %<CR>