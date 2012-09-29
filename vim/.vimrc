" Vundle
if has("gui_win32") || has("win64") || has("gui_win32s")
    " set rtp+=$ProgramFiles\Vim\vimfiles\bundle\vundle\
    set rtp+=$HOMEPATH/.vim/bundle/vundle
else
    set rtp+=~/.vim/bundle/vundle/
endif

call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'vim-scripts/L9'
" Bundle 'seletskiy/FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'mileszs/ack.vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'othree/html5.vim'
Bundle 'groenewege/vim-less'
Bundle 'kshenoy/vim-signature'
Bundle 'vim-scripts/TabBar'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'vim-scripts/EasyGrep'

" Python
Bundle 'nvie/vim-flake8'
Bundle 'alfredodeza/pytest.vim'
Bundle 'lambdalisue/nose.vim'
Bundle 'jmcantrell/vim-virtualenv'
" Bundle 'lepture/vim-jinja'
Bundle 'beyondwords/vim-jinja2'
"Bundle 'klen/python-mode'

"Colorschemes
Bundle 'vim-scripts/Wombat'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/obsidian2.vim'

" Misc
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tetsuo13/Vim-log4j'
Bundle 'reinh/vim-makegreen'
Bundle 'xolox/vim-misc'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tyru/current-func-info.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/BufOnly.vim'


"Bundle 'shougo/neocomplcache'


if has("gui_running")
	colorscheme wombat
    set guitablabel=%M%t
    " set lines=40
    " set columns=115

    if has("gui_gnome")
        set term=gnome-256color
        colorscheme railscasts
        set guifont=Monospace\ Bold\ 12
    endif

    if has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h14
        " key binding for Command-T to behave properly
        " uncomment to replace the Mac Command-T key to Command-T plugin
        "macmenu &File.New\ Tab key=<nop>
        " make Mac's Option key behave as the Meta key

        " Easily open command prompt and Explorer
        map <leader>term :silent !open -a Terminal <C-R>=expand("%:p:h")<CR><CR>
        map <leader>finder :silent !open -a Finder <C-R>=expand("%:p:h")<CR><CR>

        " Cycle through buffers with Command+Option+Left and Command+Option+Right
        nmap <D-M-Left> :bprev<CR>
        nmap <D-M-Right> :bnext<CR>

        " Enable Eclipse style moving of lines
        nmap <D-j> mz:m+<CR>`z==
        nmap <D-k> mz:m-2<CR>`z==
        imap <D-j> <Esc>:m+<CR>==gi
        imap <D-k> <Esc>:m-2<CR>==gi
        vmap <D-j> :m'>+<CR>gv=`<my`>mzgv`yo`z
        vmap <D-k> :m'<-2<CR>gv=`>my`<mzgv`yo`z

        set directory=/tmp
        set backupdir=/tmp

        " Default startup directory
        cd ~/Development
    endif

    if has("gui_win32") || has("win64") || has("gui_win32s")
        set guifont=DejaVu_Sans_Mono:h11::cANSI
        "set guifont=Consolas:h12
        set enc=utf-8

        " Easily open command prompt and Explorer
        map <leader>cmd :silent !start cmd <C-R>=expand("%:p:h")<CR><CR>
        map <leader>exp :!start explorer <C-R>=expand("%:p:h")<CR><CR>

        " Cycle through buffers with Control+Alt+Left and Control+Alt+Right
        nmap <C-M-Left> :bprev<CR>
        nmap <C-M-Right> :bnext<CR>

        " Enable Eclipse style moving of lines
        nmap <M-j> mz:m+<CR>`z==
        nmap <M-k> mz:m-2<CR>`z==
        imap <M-j> <Esc>:m+<CR>==gi
        imap <M-k> <Esc>:m-2<CR>==gi
        vmap <M-j> :m'>+<CR>gv=`<my`>mzgv`yo`z
        vmap <M-k> :m'<-2<CR>gv=`>my`<mzgv`yo`z

        " nmap <C-W> :close<CR>

        " let g:tagbar_ctags_bin = 'C:/windows/system32/ctags.exe'

        " Backups
        set directory=$TMP
        set backupdir=$TMP
    endif
else
    " Terminal
	colorscheme torte
endif

set virtualedit=block "Allow selections to go past EOL
set hidden
"CONSIDER? set nohidden " When I close a tab, remove the buffer
set history=1000
set wildmenu
set wildmode=list:longest
set complete-=i "Remove included files from search
set completeopt+=longest "Set <C-N>/<C-P> completion to sane default
set nowrapscan "Turn off search wrapping
set sessionoptions=buffers,tabpages,curdir
"set tags+=C:\Python26\tags

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc  " MacOSX/Linux
set wildignore+=tmp\*,*.swp,*.zip,*.exe,*.pyc   " Windows

set nocompatible " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd " display incomplete commands
"filetype plugin indent on " load file type plugins + indentation

" Gui
set go-=m "Hide menu
set go-=T "Hide toolbar
" set go-=r "Hide scrollbar
set number
set cursorline
" set lines=60 columns=120
"winpos 1920 0
set laststatus=2 "always show status line
set noerrorbells
set title

" Whitespace
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
"set smartindent
"autocmd FileType Python,Ruby setlocal nosmartindent " Fix typing # - http://vim.wikia.com/wiki/VimTip644

" Default foldmethod
" http://vim.wikia.com/wiki/All_folds_open_when_open_a_file
set foldmethod=indent
set foldminlines=20
set foldlevelstart=20
set foldlevel=20
" set nofoldenable
" Expand all by default
autocmd BufNewFile,BufRead * normal zR

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Backups
"""set backupdir=$TEMP
"""set directory=$TEMP
" if has("win32") || has("win64")
"    set directory=$TMP
" else
"    set directory=/tmp
" end
"Consider: http://vim.wikia.com/wiki/VimTip962
autocmd BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup' 



" Python Folding
"autocmd BufNewFile,BufRead *.py setlocal foldmethod=indent
" Expand all by default
"autocmd BufNewFile,BufRead *.py normal zR
"autocmd Syntax *.py normal zR
"
" Easily locate files with :find (instead of :e with full path)
" autocmd BufEnter * set path=**

" Reload vim config when saved
" autocmd BufWritePost $MYVIMRC,.vimrc nested :source $MYVIMRC
autocmd BufWritePost $MYVIMRC nested :source $MYVIMRC

" Swap ` with ' to jump to column position as well when using '
nnoremap ' `
nnoremap ` '

" Set Control+Left/Right to navigate tag stack
map <silent><C-Left> <C-T>
map <silent><C-Right> <C-]>

" Change current working directory to location of current buffer's file
map <leader>cd :cd <C-R>=expand("%:p:h")<CR><CR>

" Remap control-a back to increment instead of select all while in normal mode
"""nunmap <C-A>

" Allow highlighting in visual mode and searching to matches with */#
vnoremap * y/<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>
vnoremap # y?<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>

" Show buffers and allow selection
map ,b :buffers<CR>:buffer<space>

" XML Folding
let g:xml_syntax_folding=1
autocmd BufNewFile,BufRead *.xml,*.xsl setlocal foldmethod=syntax
"autocmd Syntax *.xml,*.xsl setlocal foldmethod=syntax
" Expand all by default
autocmd BufNewFile,BufRead *.xml,*.xsl normal zR
"autocmd Syntax *.xml,*.xsl normal zR

" Easy XML formatting
map <leader>xmlf :%!xmllint.exe "%" --format --encode UTF-8 -<CR>

autocmd BufNewFile,BufRead *.aspx,*.cshtml setlocal filetype=html

" Change color of completion popup from pink
highlight Pmenu guifg=#FFFFFF guibg=#AAAAAA
highlight PmenuSel guifg=#000000 guibg=#cae682 gui=bold

" Change color of search from yellow to muted orange
highlight Search guibg=#FFCC00

" Remove html underline
" highlight link htmlLink text
" autocmd BufNewFile,BufRead *.html,*.htm highlight link htmlLink text
" autocmd FileType html highlight link htmlLink text



" Easier window navigation mappings
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Select last pasted text - http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Highlight end of line whitespace.
"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$/


" Map the F2 key to the clean white space command
" map <F2> :call TrimWhiteSpace()<CR>
" map! <F2> :call TrimWhiteSpace()<CR>

" Removes trailing spaces
" function! TrimWhiteSpace()
  " %s/\s*$//
  " ''
" endfunction

" If you want, you can have whitespace cleaned up automatically on write
" Uncomment to enable white space removal on write
"autocmd FileWritePre *   :call TrimWhiteSpace()
"autocmd FileAppendPre *  :call TrimWhiteSpace()
"autocmd FilterWritePre * :call TrimWhiteSpace()
"autocmd BufWritePre *    :call TrimWhiteSpace()

" Python
" autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
" autocmd BufNewFile,BufRead *.py compiler nose
" autocmd BufRead *.py set makeprg=nosetests --with-gae --gae-lib-root="/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine"

" Pylint is the default compiler for python files
" let g:pylint_onwrite = 0
" au FileType python compiler pylint
" Except test files which are run using pytest.

" nose.vim
" Needs:
"   sudo pip install nose
"   sudo pip install git+git://github.com/nvie/nose-machineout.git#egg=nose_machineout
au! BufNewFile,BufRead test_*.py compiler nose

autocmd BufWritePre *.py :%s/\s\+$//e " Remove trailing whitespace on save
"match Todo /\s\+$/ " Highlight trailing whitespace

autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
" autocmd FileType python map <f5> :w\|!python -i %<cr>
autocmd FileType python map <f5> :w\|!ipython -nobanner %<cr>
" map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

" PySmell
"autocmd FileType python setlocal omnifunc=pysmell#Complete
"let g:pysmell_matcher='camel-case'
" to update run: pysmell . -o PYSMELLTAGS
" to update stdlib run: pysmell C:\Python25 -x test -o PYSMELLTAGS.stdlib

" Javascript / jQuery
autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" Fix syntax highlight (possible slowness for large files)
" http://vim.wikia.com/wiki/Fix_syntax_highlighting
autocmd BufEnter * :syntax sync fromstart


"""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""
" let g:evalSelectionRubyDir = "$VIMRUNTIME/ruby/"

" Gundo
nnoremap <leader>ut :GundoToggle<CR>

" Tagbar 
let g:tagbar_usearrows = 1
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_autofocus = 1
" let g:tagbar_width = 26
nnoremap <leader>tb :TagbarToggle<CR>

" vim-less
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

" buftabs
let g:buftabs_only_basename=1
let g:buftabs_in_statusline=1
let g:buftabs_active_highlight_group="Buftabs_Normal"
highlight Buftabs_Normal  guifg=#AAAAAA gui=standout
"let g:buftabs_inactive_highlight_group=
" set statusline=%=buffers:\ %{buftabs#statusline()}
" set statusline=%{getcwd()}%=buffers:\ %{buftabs#statusline()}
" set statusline=%{getcwd()}

" minibuf explorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


" Tabbar
"let g:Tb_AutoUpdt = 1
":autocmd InsertLeave,BufWritePost * :TbAup
highlight Tb_Normal         gui=none                 " Not visible / not changed
highlight Tb_Changed        guifg=red gui=none         " Not visible / changed
highlight Tb_VisibleNormal  guifg=#AAAAAA gui=standout " Visible / not changed
highlight Tb_VisibleChanged guifg=red gui=standout     " Visible / changed


" Taglist
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_Right_Window = 0
let Tlist_Use_Horiz_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
"let Tlist_Show_Menu = 1
let Tlist_Enable_Fold_Column = 1
map <leader>tl :TlistToggle<CR>
map <leader>tu :TlistUpdate<CR>
" Refresh taglist when file is written
"""autocmd BufWritePost * :TlistUpdate


" TagListTagName - Used for tag names
"highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
"highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
"highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
"highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
"highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
"let Tlist_Sort_Type = "order" " sort by order or name
"let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
"let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
"let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
"let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
"let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 40
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]




" FuzzyFinder
" map <leader>fb :FufBuffer<CR>
" map <leader>ff :FufFile<CR>
" map <leader>fs :FufFile **/<CR>
" map <leader>fd :FufDir<CR>
" map <leader>fr :FufMruFile<CR>
" map <leader>ft :FufBufferTag<CR>
" map <leader>fj :FufJumpList<CR>
" map <leader>fq :FufQuickfix<CR>
" map <leader>fc :FufChangeList<CR>
" map <leader>fl :FufLine<CR>
" map <leader>fm :FufBookmarkDir<CR>
let g:fuf_modesDisable = ['mrucmd']
let g:fuf_mrufile_maxItem = 100
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp|pyc)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|swp|pyc)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_mrufile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|sw[po])$|^(\/\/|\\\\|\/mnt\/|\/media\/|H:|P:|S:)'

" CtrlP
map <leader>ff :CtrlP<CR>
map <leader>fb :CtrlPBuffer<CR>
map <leader>fr :CtrlPMRUFiles<CR>
map <leader>ft :CtrlPBufTag<CR>
map <leader>fq :CtrlPQuickfix<CR>
let g:ctrlp_match_window_reversed = 0
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git$\|\.hg$\|\.svn$',
"   \ 'file': '\.exe$\|\.so$\|\.dll$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }

" TComment
map <leader>cc :TComment<CR>
call tcomment#DefineType('jinja', '{# %s #}')
call tcomment#DefineType('jinja_block', '{%% comment %%}%s{%% endcomment %%}\n')
call tcomment#DefineType('htmljinja', '{# %s #}')
call tcomment#DefineType('htmljinja_block', '{%% comment %%}%s{%% endcomment %%}\n')
call tcomment#DefineType('gitconfig', '# %s')

" Fugutive (Git)
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR>

" Pyflakes
let g:pyflakes_use_quickfix = 0 

" Flake8 - http://pypi.python.org/pypi/flake8
" let g:flake8_ignore='E501'

" Powerline
" let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'custom'
let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'compatible'

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_python_checker_args='--ignore=E501' " Flake8 ignores

" NERDTree
let NERDTreeShowBookmarks = 1
let NERDTreeChDirMode = 2
let NERDTreeIgnore=['\~$', '\.pyc$']
let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let NERDShutUp=1 " no more 'unknown filetype' warnings!
"map <leader>d :NERDTree <C-R>=expand("%:p:h")<CR><CR>
"map <leader>nt :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>ntt :NERDTreeToggle<CR>
map <leader>ntf :NERDTreeFind<CR>

" Define the NERDTree-aware aliases
" https://github.com/scrooloose/nerdtree/issues/29
" call s:DefineCommand("cd", "ChangeDirectory")
" call s:DefineCommand("touch", "Touch")
" call s:DefineCommand("rm", "Remove")
" call s:DefineCommand("e", "Edit")
" call s:DefineCommand("mkdir", "Mkdir")

" Open NERDTree on startup if file not passed as argument or input piped in
" function! StartUp()
"     if !exists("s:std_in") && 0 == argc()
"         NERDTree
"     end
" endfunction
" 
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * call StartUp()



" ShowFunc
" Defaults to <F1>
"""map <leader>sfl <Plug>ShowFunc
"""map! <leader>sfl <Plug>ShowFunc
"""let g:showfuncctagsbin = "C:/Windows/ctags.exe"

" TSelectBuffer
"map <leader>tsb :TSelectBuffer<CR>

" pydictation
" let g:pydiction_location = 'C:/Users/Sean/Dropbox/My Dropbox/Configuration/vimfiles/bin/complete-dict'
" let g:pydiction_menu_height = 20

" EasyGrep
"""let g:EasyGrepFileAssociations='C:/Program Files/Vim/vimfiles/plugin/EasyGrepFileAssociations'
let g:EasyGrepMode=0
let g:EasyGrepCommand=1
let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepHidden=0
let g:EasyGrepAllOptionsInExplorer=1
let g:EasyGrepWindow=0
let g:EasyGrepReplaceWindowMode=0
let g:EasyGrepOpenWindowOnMatch=1
let g:EasyGrepEveryMatch=0
let g:EasyGrepJumpToMatch=1
let g:EasyGrepInvertWholeWord=0
let g:EasyGrepFileAssociationsInExplorer=1
let g:EasyGrepOptionPrefix='<leader>vy'
let g:EasyGrepReplaceAllPerFile=0

" Zencoding
let g:user_zen_expandabbr_key = '<c-e>'

" TinyBufferExplorer
map <leader>tbe :TBEMinimal<CR>
" map <leader>tbe :TBESimpleGroup<CR>
" map <leader>tbe :TBE<CR>

" vim-notes
" let g:notes_directory = "C:/notes"




" Neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" http://wrongpc.blogspot.com/2010/06/supertab-complete-for-neocomplcache.html
"imap  <silent><expr><tab>  neocomplcache#sources#snippets_complete#expandable() ? "\<plug>(neocomplcache_snippets_expand)" : (pumvisible() ? "\<c-e>" : "\<tab>")
"smap  <tab>  <right><plug>(neocomplcache_snippets_jump) 
"inoremap <expr><c-e>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_disable_auto_complete = 1
" inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,jinja setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" Log4j format
autocmd BufRead,BufNewFile *.log set syntax=log4j

" Tabularize 
" Automatically run  when inserting  pipes '|'
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" vim-signature
let g:SignatureDefaultMappings = 0

"""""""""""""""""""""""""""""""""
" Custom functions
"""""""""""""""""""""""""""""""""
function! s:transpose()
    let maxcol = 0
    let lines = getline(1, line('$'))

    for line in lines
        let len = len(line)
        if len > maxcol
            let maxcol = len
        endif
    endfor

    let newlines = []
    for col in range(0, maxcol - 1)
        let newline = ''
        for line in lines
            let line_with_extra_spaces = printf('%-'.maxcol.'s', line)
            let newline .= line_with_extra_spaces[col]
        endfor
        call add(newlines, newline)
    endfor

    1,$"_d
    call setline(1, newlines)
endfunction
command! TransposeBuffer call s:transpose()



" Run ctags on cwd and append to tags
map <leader>tr :ScanAndSetTagsOnCwd<CR>

function! s:scanAndSetTagsOnCwd()
    !start ctags -R --extra="+fq" --fields="+Si" .
    set tags+=tags
endfunction
command! ScanAndSetTagsOnCwd call s:scanAndSetTagsOnCwd()

"pysmell . -x site-packages test -o PYSMELLTAGS.stdlib

" Select (visual mode) and execute with Control+h
"map <C-H> :python EvaluateCurrentRange()<CR>
"python << endpython
"import vim
"def EvaluateCurrentRange():
"  eval(compile('\n'.join(vim.current.range),'','exec'),globals())
"
"endpython

" Make gf work on Python import statements
python << endpython
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
endpython

" Add the virtualenv's site-packages to vim path
python << endpython
import os
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
endpython

" Remove *.pyc files from current directory recursively
python << endpython
import os
def CleanPyc():
    for dirpath, dirnames, filenames in os.walk('.'):
        for filename in filenames:
            if '.pyc' in filename:
                full_pathname = os.path.join(dirpath, filename)
                print 'Removing %s' % full_pathname
                os.remove(full_pathname)
endpython
command! CleanPyc python CleanPyc()

" Replace placeholders
python << endpython
import vim
from datetime import datetime

def ReplacePlaceholders():
    query, identifierQuery, parameters = vim.current.line.split(';')

    parameters = [parameter.strip() for parameter in parameters.split(',')]
    parameters = [parameter.split('=') for parameter in parameters]
    parameters =  [(parameter[0].strip(' '), parameter[1].strip(' ')) for parameter in parameters]
    parametersDict = dict(parameters)

    for k, v in parametersDict.iteritems():
        try:
            datetime.strptime(v, '%m/%d/%Y %I:%M:%S %p')
            is_date = True
        except ValueError:
            is_date = False

        # TODO: Handle similar name place holders - ex. @p1 and @p11
        # http://stackoverflow.com/questions/1919096/mass-string-replace-in-python
        # re.sub(r'(@p[0-9]+)', r'%(\1)s', s) % parametersDict
        if v == 'True':
            query = query.replace(k, '1')
        elif v == 'False':
            query = query.replace(k, '0')
        elif is_date:
            query = query.replace(k, "'%s'" % v)
        else:
            query = query.replace(k, v)


    vim.current.line = query
endpython
command! ReplacePlaceholders python ReplacePlaceholders()


function! HandleURI()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
      exec "!start cmd /c \"start " . s:uri . "\""
      "!start cmd /c \"start http://www.google.com\"
  else
	  echo "No URI found in line."
  endif
endfunction
map <leader>wb :call HandleURI()<CR>



" http://vim.wikia.com/wiki/Customize_text_for_closed_folds
" Set a nicer foldtext function
set foldtext=MyFoldText()
function! MyFoldText()
    let line = getline(v:foldstart)
    if match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
        let initial = substitute( line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
        let linenum = v:foldstart + 1
        while linenum < v:foldend
            let line = getline( linenum )
            let comment_content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
            if comment_content != ''
                break
            endif
            let linenum = linenum + 1
        endwhile
        let sub = initial . ' ' . comment_content
    else
        let sub = line
        let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
        if startbrace == '{'
            let line = getline(v:foldend)
            let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
            if endbrace == '}'
                let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
            endif
        endif
    endif
    let n = v:foldend - v:foldstart + 1
    let info = " " . n . " lines"
    let sub = sub . "                                                                                                                  "
    let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
    let fold_w = getwinvar( 0, '&foldcolumn' )
    let sub = strpart( sub, 0, winwidth(0) - strlen( info ) - num_w - fold_w - 1 )
    return sub . info
endfunction


" Make p in Visual mode replace the selected text with the "" register.
"vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp


" Select correct html template
" http://marchdown.xenoethics.org/src/mitsuhiko-dotfiles/vim/vimrc
function! s:SelectHTML()
    let n = 1
    while n < 50 && n < line("$")
        " check for jinja
        if getline(n) =~ '{%\s*\(extends\|block\|macro\|set\|if\|for\|include\|trans\)\>'
            " set ft=jinja
            set ft=htmljinja
            return
        endif

        " check for mako
        if getline(n) =~ '<%\(def\|inherit\)'
            set ft=mako
            return
        endif

        " check for genshi
        if getline(n) =~ 'xmlns:py\|py:\(match\|for\|if\|def\|strip\|xmlns\)'
            set ft=genshi
            return
        endif

        let n = n + 1
    endwhile

    " go with html
    set ft=html
endfunction
autocmd BufNewFile,BufRead *.html,*.htm  call s:SelectHTML()

