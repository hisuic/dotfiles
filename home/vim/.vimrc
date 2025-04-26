"   ___ ___ .__             .__/\             .__                        "
"  /   |   \|__| ________ __|__)/______ ___  _|__| ____________   ____   "
" /    ~    \  |/  ___/  |  \  |/  ___/ \  \/ /  |/     \_  __ \_/ ___\  "
" \    Y    /  |\___ \|  |  /  |\___ \   \   /|  |  Y Y  \  | \/\  \___  "
"  \___|_  /|__/____  >____/|__/____  >   \_/ |__|__|_|  /__|    \___  > "
"        \/         \/              \/                 \/            \/  "

set number
set autoindent
set tabstop=4

inoremap <silent> jj <ESC>

nnoremap <Space> :w <CR>

colorscheme slate

function! HardMode ()
  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>
endfunction

function! EasyMode ()
  noremap <Up> <Up>
  noremap <Down> <Down>
  noremap <Left> <Left>
  noremap <Right> <Right>
endfunction

call HardMode()
