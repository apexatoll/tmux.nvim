" Title: tmux-nvim
" Description: 
" Last Change: Sat 17 Jun 2023 14:51:06 BST
" Maintainer: https://github.com/apexatoll

if exists("g:loaded_tmux_nvim")
  finish
endif

let g:loaded_tmux_nvim = 1

command! -nargs=0 HelloWorld lua require("tmux-nvim").hello_world()
