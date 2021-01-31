source $HOME/.config/nvim/vim-plug/plugins.vim


"Color Scheme
colorscheme dracula

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

"MARKDOWN PREVIEW

let g:mkdp_auto_close = 0
nnoremap <M-m> :MarkdownPreview<CR>

"JS LINTING

let g:neomake_javascript_enabled_makers = ['eslint']

"DRACULA TRANSPARENCY
 hi Normal guibg=NONE ctermbg=NONE
