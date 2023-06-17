" Title: tmux-nvim
" Description: 
" Last Change: Sat 17 Jun 2023 14:51:06 BST
" Maintainer: https://github.com/apexatoll

if exists("g:loaded_tmux_nvim")
  finish
endif

let g:loaded_tmux_nvim = 1

command! -nargs=0 TmuxNavigateLeft  lua require("tmux-nvim").tmux_navigate("h")
command! -nargs=0 TmuxNavigateDown  lua require("tmux-nvim").tmux_navigate("j")
command! -nargs=0 TmuxNavigateUp    lua require("tmux-nvim").tmux_navigate("k")
command! -nargs=0 TmuxNavigateRight lua require("tmux-nvim").tmux_navigate("l")
