" We're running Vim, not Vi!
set nocompatible      

"bling
set background=dark
"colorscheme ir_black
set gfn=Monaco:h12

set showmode
"set number

" always diff vertical
set diffopt=vertical
" show matching parentheses
set showmatch

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set ai sw=2 sts=2 et

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"status bar
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ Line:\ %l/%L:%c\ Filetype:\ %y\ Format:\ %{&ff}
"syntastic
set statusline+=\ %#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

"jump to search term
set incsearch

"highlight
set hlsearch

" share buffer to osx clipboard
set clipboard=unnamed

" Settings for VimClojure
let g:clj_highlight_builtins=1      " Highlight Clojure's builtins
let g:clj_paren_rainbow=1           " Rainbow parentheses'!

" Easier use of Command-T (see http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_3))
let mapleader = "-"

" make sure to specify a default
map <Leader>e :w! <bar> !~/.rvm/rubies/default/bin/ruby %<CR>

" NERDTree
map <Leader>d :execute 'NERDTreeToggle ' . getcwd()<CR> 
let NERDTreeShowHidden=1

" json, need to do: sudo cpan JSON::XS
au BufRead,BufNewFile *.json set filetype=json
map <leader>j  <Esc>:%!json_xs -f json -t json-pretty<CR>

" format xml files (http://vim.wikia.com/wiki/Format_your_xml_document_using_xmllint)
map <leader>x :silent 1,$!xmllint --format --recover - 2>/dev/null<CR>

" typo stuff
cmap W w
cmap Q q

" Show unwanted whitespace
set listchars=tab:-✈,trail:,extends:>
set list!

"emacs stuff (only insert mode)
inoremap  <C-E> <End>
inoremap  <C-A> <Home>

" move to previous/next line
set whichwrap+=<,>,h,l,[,]

" filetype to make html.erb snippets work
" see
" http://stackoverflow.com/questions/4658737/vim-html-erb-snippets-snipmate-need-a-vim-tip
"MOVED TO ftdetect/ruby.vim
"autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.rails.html

"remove highlighted search results
map <leader><leader> :noh<CR>

" MacVIM shift+arrow-keys behavior (required in .vimrc)
"let macvim_hig_shift_movement = 1

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

if !exists("*s:CloseIfOnlyNerdTreeLeft")
  function s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
      if bufwinnr(t:NERDTreeBufName) != -1
        if winnr("$") == 1
          q
        endif
      endif
    endif
  endfunction
endif

autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown}    set ft=markdown
autocmd BufRead,BufNewFile {*.json}                   set ft=javascript

