

"---------------------------------------------
"--- Plugin �Ǘ�
"---------------------------------------------

let s:dein_dir=expand('~/.vim/dein')
let s:dein_repo_dir=s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible               " Be iMproved
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)

call dein#begin(s:dein_dir)

call dein#add('Shougo/dein.vim')
call dein#add('scrooloose/syntastic')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-fugitive.git')
call dein#add('junegunn/vim-easy-align')
call dein#add('itchyny/lightline.vim')
call dein#add('luochen1990/rainbow')

call dein#end()
call dein#save_state()

endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif
"---------------------------------------------
"--- ��{�ݒ�
"---------------------------------------------
"txt�t�@�C���̃V���^�b�N�X��markdown�ɂ���B
"au BufRead,BufNewFile *.txt  set filetype=markdown formatoptions=q

"�o�b�N�A�b�v�t�@�C�������쐬�̒�~
set nobackup

"�r�[�v���Ɖ�ʃt���b�V���̒�~�i�ݒ肪�����Ȃ��ꍇ������̂Œ��Ӂj
"set vb t_vb=

"undofile�̒u���ꏊ��ݒ�
"set undofile
set undodir=C:/vim_undofile

"TAB����ɕ\��
set showtabline=2 

"�J�����t�@�C���Ɠ����f�B���N�g���Ɉړ�
"au   BufEnter *   execute ":lcd " . expand("%:p:h")
"
"�X�e�[�^�X���C���ɉ��s�R�[�h��\��
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"�u���b�N�ԃW�����v(begin - end)
packadd! matchit
packadd! editexisting

"�܂�Ԃ�����
"set nowrap

"�������s����
set textwidth=0
"�C���f���g���X�y�[�X4�ɂł��낦��
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"grep���A������cwindow���J��
autocmd QuickFixCmdPost *grep* cwindow

"���΍s�ԍ�
"set rnu

"tag�t�@�C������ʃt�H���_�܂Ō���
set tags=tags;

"�t�@�C���ɉ����Č��₷���F�t�������Ă����
syntax on

"���������Ƃ��Ƀn�C���C�g��t����
set hlsearch

"�J�[�\���s���n�C���C�g
set cursorline


"�G���R�[�h�̎w��
"set fileencoding=japan
"set fileencodings=utf-8,iso-2022-jpm,euc-jp,ucs-2le,ucs-2,cp932

"�s�ԍ���t����
set number

"�������ɑ啶���E����������ʂ��Ȃ�
set ignorecase

"�F�e�[�}�̓f�t�H���g���g�p
"colorscheme default

"�X���b�v�t�@�C�����쐬���Ȃ�
"�u�����̃X���b�v�t�@�C�����J���Ȃ��̂Ń��J�o���͕s�\�ł��v���\�����ꂽ���̉��
set noswapfile

"��ʂ̃X�N���[��������ہA�㉺10�s�\�������܂܃X�N���[������B
set scrolloff=10

"���l�̃C���N�������g���s���ېi�������߂�
set nrformats=hex   "16�i��
"set nrformats=octal "8�i��
"set nrformats=alpha "alphabet

"mode�̕\�������Ȃ�
set noshowmode

"key bind
"----------------------------------------------------------------------------

let mapleader = "\<Space>"

nnoremap <Leader>t :set filetype=markdown formatoptions=q<CR>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap Q <nop>
nnoremap <C-Z> <nop>
nnoremap ZZ <nop>
nnoremap ZQ <nop>

nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $
nnoremap dH d0
nnoremap dL d$
nnoremap yH y0
nnoremap yL y$

vnoremap Q <nop>
vnoremap <C-Z> <nop>

"�N���b�v�{�[�h�փR�s�[
vnoremap <Leader> <nop>
nnoremap <Leader> <nop>
vnoremap <Leader>y "*y
vnoremap <Leader>d "*d
nnoremap <Leader>yy "*yy
nnoremap <Leader>dd "*dd
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P
vnoremap <Leader>p "*p
vnoremap <Leader>P "*P

"����t�����e�L�X�g�̖����Ɏ����I�Ɉړ�
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"�^�u�̈ړ�
nnoremap  <C-l> :tabn<CR>
nnoremap  <C-h> :tabp<CR>
nnoremap  <C-n> :tabnew<CR>

"�V�����^�u���J���ă^�O�W�����v
nnoremap t<C-]> :tab tag <C-R>=expand('<cword>')<CR><CR>

" [tag vertical] �c�ɃE�B���h�E�𕪊����ăW�����v
nnoremap tv :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

" [tag horizon] ���ɃE�B���h�E�𕪊����ăW�����v
nnoremap th :split<CR> :exe("tjump ".expand('<cword>'))<CR>

"no hilight
nnoremap <silent> <Leader>h :noh<CR>

"Visual Mode���A�I�������͈͂�����
vnoremap * "zy:let @/ = @z<CR>n

"�\���`�F�b�N�̌��ʂ����
nnoremap <Leader>c :<C-u>SyntasticCheck<CR>
nnoremap <Leader>s :<C-u>SyntasticReset<CR>


"�ۑ�
nnoremap <Leader>w :w<CR>

"vnoremap <Leader>e <Plug>(EasyAlign)
map <Leader>e <Plug>(EasyAlign)<C-p>

let g:easy_align_delimiters = {
\ "(": {'pattern': '(', 'right_margin': 0},
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\}

" netrw�͏��tree view
let g:netrw_liststyle = 3
" CVS��.�Ŏn�܂�t�@�C���͕\�����Ȃ�
let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'�Ńt�@�C�����J���Ƃ��͉E���ɊJ���B(�f�t�H���g�������Ȃ̂œ���ւ�)
let g:netrw_altv = 1
" 'o'�Ńt�@�C�����J���Ƃ��͉����ɊJ���B(�f�t�H���g���㑤�Ȃ̂œ���ւ�)
let g:netrw_alto = 1

"lightline�ݒ�
"----------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme'        : 'solarized',
      \ 'mode_map'           : { 'c': 'NORMAL' },
      \ 'active'             : {
      \   'left'             : [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function' : {
      \   'modified'         : 'LightlineModified',
      \   'readonly'         : 'LightlineReadonly',
      \   'fugitive'         : 'LightlineFugitive',
      \   'filename'         : 'LightlineFilename',
      \   'fileformat'       : 'LightlineFileformat',
      \   'filetype'         : 'LightlineFiletype',
      \   'fileencoding'     : 'LightlineFileencoding',
      \   'mode'             : 'LightlineMode',
      \ },
      \ 'separator'          : { 'left': '', 'right': '' },
      \ 'subseparator'       : { 'left': '|', 'right': '|' }
      \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '�~' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

"function! LightlineFugitive()
"  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
"    let branch = fugitive#head()
"    return branch !=# '' ? ' '.branch : ''
"  endif
"  return ''
"endfunction

function! LightlineFugitive()
  if exists('*fugitive#head') 
      let branch = fugitive#head()
      return branch !=# '' ? '��'.branch : ''
  endif
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction


"Syntastic�ݒ�
"----------------------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_verilog_remove_include_errors = 1
let g:syntastic_verilog_checkers = ['iverilog']
let g:syntastic_mode_map = { 'mode': 'passive', 'passive_filetypes': ['verilog'] }

"NERDTree�ݒ�
"----------------------------------------------------------------------------

nnoremap <silent><Leader>n :NERDTreeToggle<CR>

"�N������NERDTree��\��
autocmd VimEnter * execute 'NERDTree'

" �u�b�N�}�[�N���ŏ�����\��
let g:NERDTreeShowBookmarks=1

" �t�@�C���w��ŊJ���ꂽ�ꍇ��NERDTree�͕\�����Ȃ�
if !argc()
    autocmd vimenter * NERDTree|normal gg3j
endif


"Rainbow
"----------------------------------------------------------------------------

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
