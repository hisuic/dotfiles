" .__    ____            /\         ____   ____.___   _____ ___________________  
" |  |__/_   | ____   ___)/  ______ \   \ /   /|   | /     \\______   \_   ___ \ 
" |  |  \|   |/    \_/ __ \ /  ___/  \   Y   / |   |/  \ /  \|       _/    \  \/ 
" |   Y  \   |   |  \  ___/ \___ \    \     /  |   /    Y    \    |   \     \____
" |___|  /___|___|  /\___  >____  >    \___/   |___\____|__  /____|_  /\______  /
"      \/         \/     \/     \/                         \/       \/        \/ 


set number
set autoindent
set tabstop=4

inoremap <silent> jk <ESC>

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
