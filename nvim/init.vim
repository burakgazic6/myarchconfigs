source $HOME/.config/nvim/vim-plug/plugins.vim


"Color Scheme
colorscheme slate

"Number
set number
"Syntax
syntax on
"Highlight number
set cursorline
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE  guibg=NONE guifg=NONE
highlight CursorLineNR cterm=bold

set smartcase 
set mouse=a

"MARKDOWN AUTOSTARTING ON FIREFOX
let g:mkdp_browser = 'firefox'
let g:mkdp_auto_start = 1
