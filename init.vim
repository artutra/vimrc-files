call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

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
