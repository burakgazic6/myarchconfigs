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
    "LIGTHLINE ALE
    Plug 'maximbaz/lightline-ale'
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
    " tabular plugin is used to format tables
    Plug 'godlygeek/tabular'
    " JSON front matter highlight plugin
    Plug 'elzr/vim-json'
    Plug 'plasticboy/vim-markdown'
    "JS LINTING
    Plug 'neomake/neomake', { 'on': 'Neomake' }
    "DRACULA THEME
    Plug 'dracula/vim'
    "NERDTREE GIT
    Plug 'Xuyuanp/nerdtree-git-plugin' 
    "PYTHON SYNTAX
    Plug 'vim-python/python-syntax'
    " Use release branch (recommend)
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Or build from source code by using yarn: https://yarnpkg.com
    "Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    "NERD ICON
    Plug 'ryanoasis/vim-devicons'
    "JEDI/PYTHON-AUTOCOMPLETER
    Plug 'davidhalter/jedi-vim'
    "JEDI ZAMAZINGO
    Plug 'zchee/deoplete-jedi'
    "DEOPLETE
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    call plug#end()
