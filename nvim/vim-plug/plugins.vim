" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "LIGHTLINE
    Plug 'itchyny/lightline.vim'
    "GOYO
    Plug 'junegunn/goyo.vim',{ 'on': 'Goyo' }
    "NERDCOMMENTER
    Plug 'scrooloose/nerdcommenter'
    "EMMET 
    Plug 'mattn/emmet-vim'
    "Analiser
    Plug 'dense-analysis/ale'
    "MARKDOWN PREWIEWER
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    "OTHER MARKDOWN PLUGS
    " tabular plugin is used to format tables
    Plug 'godlygeek/tabular'
    " JSON front matter highlight plugin
    Plug 'elzr/vim-json'
    Plug 'plasticboy/vim-markdown'
    "JS LINTING
    Plug 'neomake/neomake', { 'on': 'Neomake' }
    "DRACULA THEME
    Plug 'dracula/vim'
    


    call plug#end()
