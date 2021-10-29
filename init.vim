set number

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-jedi'
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
Plug 'nvim-lualine/lualine.nvim'
Plug 'dracula/vim', { 'as': 'draculav' }
Plug 'Mofiqul/dracula.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set autochdir
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'terryma/vim-multiple-cursors'


call plug#end()

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:neomake_python_enabled_makers = ['pylint']

colorscheme dracula

lua << END

require'lualine'.setup{
	options = {
		theme = 'dracula-nvim'
		}
	}
END
