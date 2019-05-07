map <TAB>  :w<CR>:!pdflatex %<CR>:<CR>
map <F2> :w<CR>:!pdflatex %<CR>:!bibtex %:r<CR>:!pdflatex %<CR>:!pdflatex %<CR>:<CR>
syntax on
"Manage plugin by pathogen
execute pathogen#infect()

"remap escape
imap jk <Esc>:w<CR>

"autocommands for certain file types
autocmd FileType tex setlocal spell
autocmd FileType txt setlocal spell

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set splitright
filetype plugin indent on
nnoremap <silent> <C-S-l> :nohl<CR><C-l>
vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR><CR>
:inoremap <S-Tab> <C-V><Tab>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"automatically resize focused window"
let &winheight = &lines * 8 / 10
let &winwidth = &columns * 9 / 10
"remap vimux"
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vp :VimuxPromptCommand<CR>
