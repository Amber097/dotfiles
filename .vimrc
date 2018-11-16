" signature: oceansatealaska

set fenc=utf-8
set number
set title
set autoindent
" set backspace=indent,eol,start

" 現在の行を強調表示
set cursorline

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd

" Tab文字を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2

" 行頭でのTab文字の表示幅
set shiftwidth=2

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" vim の矩形選択で文字が無くても右へ進める
set virtualedit=block

" 検索語をハイライト表示
set hlsearch

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


nnoremap Y y$
