"----------------------------------------||-----------------------------------"
"          _      _      _    ___  __    ||                                   "
"         | |    | |    | |  |__ \/_ |   || init.vim file for neovim, this    "
"         | | ___| | ___| | __  ) || |   || should be contained inside:       "
"     _   | |/ _ \ |/ _ \ |/ / / / | |   || $HOME/.config/nvim                "
"    | |__| |  __/ |  __/   < / /_ | |   ||                                   "
"     \____/ \___|_|\___|_|\_\____||_|   ||                                   "
"________________________________________||___________________________________"

""" Vim-Plug
call plug#begin()

" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nightsense/forgotten'
Plug 'zaki/zazen'

" Aesthetics - Additional
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'

" Functionalities
Plug 'tpope/vim-fugitive'   " Git
Plug 'tpope/vim-rhubarb'        " GitHub
Plug 'tpope/vim-sensible'   " Nocompatible mode
Plug 'tpope/vim-surround'   " Surround words with wrappers
Plug 'majutsushi/tagbar'    " Ctags manager
"Plug 'ludovicchabant/vim-gutentags'
Plug 'scrooloose/nerdtree'  " File manager
Plug 'Xuyuanp/nerdtree-git-plugin'
                            " Git plugin for NERDTree
Plug 'scrooloose/nerdcommenter'
                            " Powerfull comment functions
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
                            " Completion framework
Plug 'zchee/deoplete-jedi'  " Python completion
Plug 'ervandew/supertab'    " Tab completion
Plug 'jiangmiao/auto-pairs' " Auto close brackets
Plug 'junegunn/vim-easy-align'
                            " Easy alignment
Plug 'alvan/vim-closetag'   " Auto close HTML tags
Plug 'tpope/vim-abolish'    " Abbrevation and substitution
Plug 'Yggdroot/indentLine'  " Displays indent lines
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot' " Language pack
Plug 'chrisbra/Colorizer'   " Shows colors on code or name
Plug 'heavenshell/vim-pydocstring'
                            " Generate Pydoc
Plug 'vim-scripts/loremipsum'
                            " Generates loremipsum
Plug 'SirVer/ultisnips'     " Snippets
Plug 'honza/vim-snippets'   " Snippets
Plug 'metakirby5/codi.vim'  " Python scratchpad
Plug 'dkarter/bullets.vim'  " Automated bullet lists
Plug 'vim-syntastic/syntastic'
                            " Syntax checking
Plug 'dense-analysis/ale'   " Asynchronous linting
Plug 'vim-scripts/DoxygenToolkit.vim'
                            " Doxygen Tools
Plug 'kamykn/spelunker.vim' " Enhanced Spell checker
Plug 'kamykn/popup-menu.nvim'
                            " Shows popup menu
Plug 'arakashic/chromatica.nvim'
                            " Enhanced colors


" Languages
"" C/C++
Plug 'vim-scripts/c.vim', {'for':'C/C++'}
                            " C definition
Plug 'vim-scripts/aftersyntaxc.vim', {'for':'C/C++'}
                            " Enhanced C definition
Plug 'octol/vim-cpp-enhanced-highlight', {'for':'C++'}
                            " Enhanced C++ highlighting
Plug 'cjuniet/clang-format.vim', {'for':'C/C++'}
                            " Clang Format
Plug 'aserebryakov/vim-branch-stack', {'for':'C/C++'}
                            " Follow branching path to line
Plug 'luchermitte/vimfold4c', {'for':'C/C++'}
                            " C function folding
Plug 'xavierd/Clang-complete', {'for': 'C/C++'}
                            " C/C++ workspace specific completion

" Fortran
Plug 'vim-scripts/fortran.vim'
                            " Fortran definition
Plug 'rudrab/vimf90'        " Fortran IDE

" JSON
Plug 'leshill/vim-json'

"" Markdown
Plug 'suan/instant-markdown-d'
                            " Markdown preview server
"" NodeJS
Plug 'moll/vim-node'

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
                            " Completion framework
"" C/C++
Plug 'shougo/deoplete-clangx', {'for':'C/C++'}
Plug 'zchee/deoplete-clang', {'for':'C/C++'}

"" Docker
Plug 'deoplete-plugins/deoplete-docker', {'for':'docker'}
"" Github issues
Plug 'severeoverfl0w/deoplete-github'
                            " Connects your commits with github issues
"" javaScript
Plug 'carlitux/deoplete-ternjs', {'do':'npm install -g tern'}
"" LaTeX
Plug 'lionawurscht/deoplete-biblatex', {'for':'latex'}
Plug 'lervag/vimtex', {'for':'latex'}
"" Make
Plug 'deoplete-plugins/deoplete-make'
"" Python
Plug 'zchee/deoplete-jedi', {'for':'make'}
"" Language spell checking
"Plug 'deathlyfrantic/deoplete-spell'
                            " Integrates vim embedded spell checking
"" zsh
Plug 'zchee/deoplete-zsh'
Plug 'Valodim/vim-zsh-completion'

" Entertainment
"Plug 'ryanss/vim-hackernews'

call plug#end()

""" Python3 VirtualEnv
let g:python3_host_prog = expand('/usr/sbin/python3')

""" Python2 VirtualEnv
let g:python_host_prog = expand('/usr/sbin/python2')

""" Coloring
syntax on
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable  = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z       = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Deoplete
let g:deoplete#enable_at_startup = 1
" Disable documentation window
set completeopt-=preview
" Deoplete spell
"set spell
" Deoplete clangx
    " Change clang binary path
call deoplete#custom#var('clangx', 'clang_binary', '/usr/sbin/clang')
    " Change clang options
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '')"
" Deoplete clang
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header  = "/usr/lib/clang/"
" Deoplete zsh
"zmodload zsh/zpty

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger       = "<C-Space>"
let g:UltiSnipsJumpForwardTrigger  = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-x>"

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
	\ { 'fg':      ['fg', 'Normal'],
        \ 'bg':      ['bg', 'Normal'],
        \ 'hl':      ['fg', 'Comment'],
        \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
        \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
        \ 'hl+':     ['fg', 'Statement'],
        \ 'info':    ['fg', 'Type'],
        \ 'border':  ['fg', 'Ignore'],
        \ 'prompt':  ['fg', 'Character'],
        \ 'pointer': ['fg', 'Exception'],
        \ 'marker':  ['fg', 'Keyword'],
        \ 'spinner': ['fg', 'Label'],
        \ 'header':  ['fg', 'Comment'] }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0

" DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre = "@Synopsis  "
let g:DoxygenToolkit_paramTag_pre = "@Param "
let g:DoxygenToolkit_returnTag    = "@Returns   "
let g:DoxygenToolkit_blockHeader  = "-------------------------------"
let g:DoxygenToolkit_blockFooter  = "---------------------------------"
let g:DoxygenToolkit_authorName   = "Jerome LEKIEFFRE"

" clang-format
let g:clang_format_style = 'Google'

" C.vim
"let  g:C_UseTool_cmake='yes'
"let  g:C_UseTool_doxygen='yes'

" vimfold4c
let g:fold_options = {
   \ 'fold_blank': 0,
   \ 'fold_includes': 0,
   \ 'max_foldline_length': '80',
   \ 'merge_comments' : 1,
   \ 'show_if_and_else': 1,
   \ 'strip_namespaces': 1,
   \ 'strip_template_arguments': 1
   \ }

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 0
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 0

" Spelunker
set nospell
" Enable spelunker.vim. (default: 1)
let g:enable_spelunker_vim = 1
" Enable spelunker.vim on readonly files or buffer. (default: 0)
let g:enable_spelunker_vim_on_readonly = 0
" Check spelling for words longer than set characters. (default: 4)
let g:spelunker_target_min_char_len = 4
" Max amount of word suggestions. (default: 15)
let g:spelunker_max_suggest_words = 15
" Max amount of highlighted words in buffer. (default: 100)
let g:spelunker_max_hi_words_each_buf = 100
" Spellcheck type: (default: 1)
" 1: File is checked for spelling mistakes when opening and saving. This
" may take a bit of time on large files.
" 2: Spellcheck displayed words in buffer. Fast and dynamic. The waiting time
" depends on the setting of CursorHold `set updatetime=1000`.
let g:spelunker_check_type = 1
" Highlight type: (default: 1)
" 1: Highlight all types (SpellBad, SpellCap, SpellRare, SpellLocal).
" 2: Highlight only SpellBad.
" FYI: https://vim-jp.org/vimdoc-en/spell.html#spell-quickstart
let g:spelunker_highlight_type = 1
" Disable default autogroup. (default: 0)
let g:spelunker_disable_auto_group = 1
" Create own custom autogroup to enable spelunker.vim for specific filetypes.
augroup spelunker
    autocmd!
    " Setting for g:spelunker_check_type = 1:
    autocmd BufWinEnter,BufWritePost *.vim,*.js,*.jsx,*.json,*.md call spelunker#check()
    " Setting for g:spelunker_check_type = 2:
    autocmd CursorHold *.vim,*.js,*.jsx,*.json,*.md call spelunker#check_displayed_words()
augroup END
" Override highlight group name of incorrectly spelled words. (default:
" 'SpelunkerSpellBad')
let g:spelunker_spell_bad_group = 'SpelunkerSpellBad'
" Override highlight group name of complex or compound words. (default:
" 'SpelunkerComplexOrCompoundWord')
let g:spelunker_complex_or_compound_word_group = 'SpelunkerComplexOrCompoundWord'
" Override highlight setting.
highlight SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline guifg=#9e9e9e
highlight SpelunkerComplexOrCompoundWord cterm=underline ctermfg=NONE gui=underline guifg=NONE))

" Chromatica
let g:chromatica#libclang_path='/usr/lib/libclang.so'
let g:chromatica#enable_at_startup=1


""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
     let l:save = winsaveview()
     %s/\\\@<!\s\+$//e
     call winrestview(l:save)
endfunction

" Dracula Mode (Dark)
function! ColorDracula()
	let g:airline_theme=''
        color dracula
        IndentLinesEnable
endfunction

" Seoul256 Mode (Dark & Light)
function! ColorSeoul256()
	let g:airline_theme='silver'
        color seoul256
        IndentLinesDisable
endfunction

" Forgotten Mode (Light)
function! ColorForgotten()
        " Light airline themes: tomorrow, silver, alduin
	" Light colors: forgotten-light, nemo-light
        let g:airline_theme='tomorrow'
        color forgotten-light
	IndentLinesDisable
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
        let g:airline_theme='badcat'
        11color zazen
	IndentLinesEnable
endfunction

""" Custom Mappings

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorForgotten()<CR>
nmap <leader>e4 :call ColorZazen()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
"nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
