call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'cohama/lexima.vim'

" Buscador de arquivos na pasta atual
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif

call plug#end()

colorscheme dracula

set hidden

set number


nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F2> :NERDTreeFind<CR>

" SPLITS and TABBED FILES
set splitbelow splitright

" Altera o foco do split
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Altera tamanho de cada split
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Divide a tela verticalmente e abre terminal
map <Leader>tt :vnew term://bash<CR>

