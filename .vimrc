let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set rnu
set number
set encoding=UTF-8
set background=dark
set tabstop=4
set shiftwidth=4

let &t_EI = "\033[2 q" " NORMAL  █
let &t_SI = "\033[5 q" " INSERT  |

call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" 常用指令
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-h> :Rg<CR>

inoremap <A-right> <C-i>zz
inoremap <A-left> <C-o>zz
nnoremap <A-right> <C-i>zz
nnoremap <A-left> <C-o>zz


nnoremap <A-DOWN> :m .+1<CR>==
nnoremap <A-DOWN> :m .+1<CR>==
nnoremap <A-UP> :m .-2<CR>==
inoremap <A-DOWN> <Esc>:m .+1<CR>==gi
inoremap <A-UP> <Esc>:m .-2<CR>==gi
vnoremap <A-UP> :m '<-2<CR>gv=gv
vnoremap <A-DOWN> :m '>+1<CR>gv=gv
"Comment line
map <C-_> gcl

"search word with ctrl-f
nnoremap <C-f> <Esc>/
inoremap <C-f> <Esc>/

"Select auto complete
imap <C-CR> <C-y><Left><Right>

"save file
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> <ESC>:w<CR>




set termguicolors

"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

silent! colorscheme codedark


" 在 preview 右側顯示行號及高亮
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

hi Normal guibg=NONE ctermbg=NONE
