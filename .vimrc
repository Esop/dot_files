call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-xmark', { 'do': 'make'  }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install'  }
Plug 'Shougo/neocomplete.vim'

Plug 'dhruvasagar/vim-table-mode'
Plug 'lambdatoast/elm.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-scripts/BufOnly.vim'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/vim-maximizer'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'danro/rename.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'edkolev/tmuxline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'benmills/vimux'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'gregsexton/MatchTag'
Plug 'Valloric/MatchTagAlways'
Plug 'rizzatti/dash.vim'
Plug 'dockyard/vim-easydir'
Plug 'ervandew/supertab'
Plug 'matchit.zip'
Plug 'tommcdo/vim-exchange'
Plug 'pangloss/vim-javascript'
Plug 'thoughtbot/vim-rspec'
Plug 'vim-scripts/ZoomWin'
Plug 'jelera/vim-javascript-syntax'
Plug 'christoomey/vim-tmux-runner'
Plug 'walm/jshint.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
Plug 'reedes/vim-colors-pencil'
Plug 'chriskempson/base16-vim'

call plug#end()
""""""""""""""""""""""
"" End plug Boiler "
""""""""""""""""""""""


""""""""""""""""""""""
"" Colorschemes """"
""""""""""""""""""""""
" let base16colorspace=256 " Access colors present in 256 colorspace. Must be before colorscheme declaration
set t_Co=256
set t_ut=

set background=dark
" set background=light

" this is the best one
colorscheme base16-atelierheath
" colorscheme base16-ashes
" colorscheme base16-3024
" colorscheme base16-isotope

""""""""""""""""""""""
"" Yank/Paste """"
""""""""""""""""""""""
map <C-e> y$
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

""""""""""""""""""""""
"" Leader """"
""""""""""""""""""""""
let mapleader ="\<Space>"

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set colorcolumn=80
set foldmethod=manual
set history=1000
set visualbell
set nrformats=
set nobackup
set nowritebackup
set nowrap
set noswapfile
set guioptions-=m
set nocompatible
set laststatus=2
set encoding=utf-8
" set cursorline
set showmode
set ruler
set hlsearch
set ignorecase
set scrolloff=1
set noesckeys
set ttyfast
set mouse=a
set ttymouse=xterm2
set ruler
set showcmd
set autoindent
set showmatch
set nowrap
filetype plugin indent on
syntax enable
set smartindent
set autoread


""""""""""""""""""""""
"" dash.vim """"
""""""""""""""""""""""
nmap <silent><leader>d <Plug>DashSearch

nmap <leader><leader>o :only<cr>
map <leader>c :close<cr>

""""""""""""""""""""""
"" rails-vim """"
""""""""""""""""""""""
map <Leader>sm :Emodel<Space>
map <Leader>sc :Econtroller<Space>
map <Leader>sv :Eview<Space>
map <Leader>sd :sp db/schema.rb<cr>
map <Leader>ss :Espec<Space>


""""""""""""""""""""""
"" fugative """"
""""""""""""""""""""""
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gl :Git log<cr>
nmap <Leader>gco :Git checkout<Space>
nmap <Leader>gha :Git hist --all<cr>
nmap <Leader>gh :Git hist<cr>
nmap <Leader>gdc :Git diff %<cr>
nmap <Leader>gb :Gblame %<cr>

""""""""""""""""""""""
"" JShint """"
""""""""""""""""""""""
map <leader>js :JSHint<cr>

""""""""""""""""""""""
"" tagbar """"
""""""""""""""""""""""
map <F8> :TagbarToggle<CR>

""""""""""""""""""""""
"" tmux-runner """"
""""""""""""""""""""""
let g:rspec_command = "Dispatch rspec {spec}"
nmap <leader>osr :VtrOpenRunner {'orientation': 'v', 'percentage': 50}<cr>
nmap <leader>oex :VtrOpenRunner {'orientation': 'v', 'percentage': 50, 'cmd': 'iex'}<cr>
nmap <leader>ki :VtrKillRunner<cr>


""""""""""""""""""""""
"" vim-rspec """"
""""""""""""""""""""""
map <Leader>rs :call RunCurrentSpecFile()<CR>
map <Leader>rl :call RunLastSpec()<CR>



""""""""""""""""""""""
"" vimux """"
""""""""""""""""""""""
" map <Leader>rt :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
map <Leader>rr :VimuxPromptCommand<CR>
map <Leader>vq :VimuxCloseRunner<CR>
" map <leader>vp :VimuxPromptCommand<CR>
" map <Leader>rl :VimuxRunLastCommand<CR>
" map <Leader>vz :call VimuxZoomRunner()<CR>
" let g:VimuxOrientation = "v"
" let g:VimuxHeight = "45"

""""""""""""""""""""""
"" mappings """"
""""""""""""""""""""""
nmap <Leader>ru   :!ruby %<cr>
nmap <Leader>rc   :!coffee %<cr>
nmap <Leader>rn   :!node %<cr>


""""""""""""""""""""""
"" ack """"
""""""""""""""""""""""
let g:ackhighlight = 1
" Highlight and Ack for the word under the cursor
nnoremap <leader>a    *<C-O>:AckFromSearch!<CR>
nmap <leader>ac :Ack<space>
" Ack for the current selection
vnoremap <leader>a    "dy:Ack!<space>'<C-r>d'<CR>
" use silver-searhcer with ack-vim
let g:ackprg = 'ag --nogroup --nocolor --column'


""""""""""""""""""""""
"" notes """"
""""""""""""""""""""""
map <Leader>nn :sp ~/Dropbox/notes/programming_notes.md<cr>
map <Leader>ng :sp ~/Dropbox/notes/gems.md<cr>
map <Leader>td :sp ~/Dropbox/notes/todo.md<cr>
map <Leader>ns :sp ~/Dropbox/notes/scratch_paper.txt<cr>


""""""""""""""""""""""
"" vim-resizer """"
""""""""""""""""""""""
nnoremap <silent><F3> :MaximizerToggle<CR>

""""""""""""""""""""""
"" edit  vimrc """"
""""""""""""""""""""""
nmap <leader>ev :edit $MYVIMRC<cr>


""""""""""""""""""""""
"" Open apps """"
""""""""""""""""""""""
abbrev ff :! open -a Firefox.app %:p<cr>
map <leader>gg :!open -a "Google Chrome" %<cr><cr>
map <leader>ma :!open -a "Marked 2.app" %<cr><cr>
abbrev ss :! open -a safari.app %:p<cr>



"THIS SHOULD HIDE THE MENU BAR
if has("gui_running")
  set guioptions=egmrt
endif



""""""""""""""""""""""
"" splits """"
""""""""""""""""""""""
set splitright
set splitbelow

""""""""""""""""""""""
"" navigation """"
""""""""""""""""""""""
" We can use different key mappings for easy navigation between splits to save
" a keystroke. So instead of ctrl-w then j, itâ€™s just ctrl-j:
" http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""""""""""""""""
"" show hidden """"
""""""""""""""""""""""
set list listchars=tab:»·,trail:•
" set list listchars=tab:»·,trail:¬
set showbreak=â†ª


""""""""""""""""""""""""""""""""""""""""""
"" cursor column and cursorline line """"
""""""""""""""""""""""""""""""""""""""""""

" if uncommented cursorcoloumn, color is too wide
" set cursorcolumn
" set cursorline


""""""""""""""""""""""
""  relative numbers """"
""""""""""""""""""""""
" set relativenumber
set number
set numberwidth=1


""""""""""""""""""""""
"" FZF""""
""""""""""""""""""""""
nnoremap <Leader>o :FZF<CR>



""""""""""""""""""""""
"" ingnore list """"
""""""""""""""""""""""
" complete files like a shell.
set wildmode=list:longest
set wildignore+=vendor,log,tmp,*.swp,.git,gems,.bundle,Gemfile.lock,.gem,.rvmrc,.gitignore,.DS_Store,data



""""""""""""""""""""""
"" ultisnips """"
""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsUsePythonVersion = 2


" use ag (https://github.com/ggreer/the_silver_searcher) instead of grep when
" available
if executable("ag")
  set grepprg=ag\ --noheading\ --nogroup\ --nocolor
endif

"""""""""""""""""""""""""""""""""""""
"" sensible wrapped line movement """
"""""""""""""""""""""""""""""""""""""
nmap j gj
nmap k gk

""""""""""""""""""""""
"" vim-airline """"
""""""""""""""""""""""
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" let g:airline_theme= 'pencil'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline_section_x =''
let g:airline_section_y =''

""""""""""""""""""""""
"" tmux-line """"
""""""""""""""""""""""
let g:tmuxline_powerline_separators = 1
let g:airline#extensions#tabline#enabled = 1

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '',
      \'options' : {'status-justify' : 'left'}}
" let g:tmuxline_preset = 'nightly_fox'


""""""""""""""""""""""
"" strip whitespace ""
""""""""""""""""""""""
" function! <SID>StripTrailingWhitespaces()
"     " Preparation: save last search, and cursor position.
"     let _s=@/
"     let l = line(".")
"     let c = col(".")
"     " Do the business:
"     %s/\s\+$//e
"     " CLEAN UP: RESTORE PREVIOUS SEARCH HISTORY, AND CURSOR POSITION
"     let @/=_s
"     call cursor(l, c)
" endfunction
" autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

""""""""""""""""""""""
"" remove tabs """"
""""""""""""""""""""""
" nnoremap <leader><leader>d :%s/\t/  /g<cr>


""""""""""""""""""""""
"" markdown """"
""""""""""""""""""""""
let g:markdown_fenced_languages=['ruby', 'erb=eruby', 'javascript', 'html', 'sh', 'coffee']

" markdown files end in .md (and occasionally .markdown)
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.markdown set filetype=markdown

" enable automatic spellchecking for markdown
au BufRead,BufNewFile *.md setlocal spell


" make ?s part of words
au FileType ruby,eruby,yaml setlocal iskeyword+=?

""""""""""""""""""""""
"" dash.vim """"
""""""""""""""""""""""
" dash.vim settings
    let g:dash_map = {
       \ 'rails' : 'ruby',
       \ 'ruby' : 'rails',
        \ }

""""""""""""""""""""""
"" code folding """"
""""""""""""""""""""""
set foldmethod=manual
set foldnestmax=10
set foldlevel=1


""""""""""""""""""""""
"" rainbow parensheses """"
""""""""""""""""""""""
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

augroup rainbow_lisp
    autocmd!
      autocmd FileType ruby,js,javascript,elm,elixir RainbowParentheses
    augroup END
augroup END


" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =


""""""""""""""""""""""
"" zoom window """"
""""""""""""""""""""""
nmap <Leader>z :tabnew %<cr>


""""""""""""""""""""""
"" git-gutter """"
""""""""""""""""""""""
" let g:gitgutter_override_sign_column_highlight = 0
" let highlight SignColumn ctermbg=29
highlight clear SignColumn
"

""""""""""""""""""""""
"" emmet-vim """"
""""""""""""""""""""""
" full expansion trigger is '<C-k>,'
let g:user_emmet_leader_key='<C-k>'

""""""""""""""""""""""
"" Syntastic """"
""""""""""""""""""""""
nmap <leader>se :Error<cr>
map <leader>ec :lclose<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

let g:syntastic_javascript_checkers = ['jshint', 'jslint', 'eslint']
let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }
let g:syntastic_handlebars_checkers=['handlebars']
let g:syntastic_handlebars_exec = 'Users/Bokeh/.nvm/versions/node/v0.12.0/bin/handlebars'
let g:syntastic_error_symbol = '⚡'
let g:syntastic_warning_symbol = '⚑'
let g:syntastic_style_error_symbol = '●'
let g:syntastic_style_warning_symbol = '›'
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_enable_elixir_checker = 1
""""""""""""""""""""""
"" js-beautify """"
""""""""""""""""""""""

map <Leader>jb :call JsBeautify()<cr>

""""""""""""""""""""""
"" easy-align """"
""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


""""""""""""""""""""""
"" plug mappings """"
""""""""""""""""""""""
map <leader>pu :PlugUpdate<cr>
map <leader>pi :PlugInstall<cr>
map <leader>pc :PlugClean<cr>

""""""""""""""""""""""
"" quick escape """"
""""""""""""""""""""""
imap jj <Esc>

""""""""""""""""""""""
"" bufonly """"
""""""""""""""""""""""
map <leader>fk :BufOnly<cr>

""""""""""""""""""""""
"" elixr """"
""""""""""""""""""""""
nmap <leader>re :!elixir %<cr>

""""""""""""""""""""""
"" elm """"
""""""""""""""""""""""
vnoremap <leader>eer :<C-u>ElmEvalSelection<cr>
nnoremap <leader>eel :ElmEvalLine<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>

""""""""""""""""""""""
"" table-mode """"
""""""""""""""""""""""
nmap <leader>tm :TableModeToggle<cr>
" let g:table_mode_corner_corner="+"
" let g:table_mode_header_fillchar="="


""""""""""""""""""""""""""""""
"" yank to system clipboard """"
""""""""""""""""""""""""""""""
vnoremap<C-y> "*yq

""""""""""""""""""""""
"" neocomplete.vim """"
""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

""""""""""""""""""""""
"" Xmark """"
""""""""""""""""""""""
nnoremap <leader>xm :Xmark<cr>
