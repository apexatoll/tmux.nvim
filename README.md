# `tmux.nvim`

Nvim bindings for tmux navigation, written in lua. Inspired by [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

## Installation

- Using `packer`

```lua
  use "apexatoll/tmux.nvim"
```

## Usage

```lua
vim.keymap.set("n", ";h", vim.cmd.TmuxNavigateLeft)
vim.keymap.set("n", ";j", vim.cmd.TmuxNavigateDown)
vim.keymap.set("n", ";k", vim.cmd.TmuxNavigateUp)
vim.keymap.set("n", ";l", vim.cmd.TmuxNavigateRight)
