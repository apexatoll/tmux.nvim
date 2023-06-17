local Tmux = require("tmux-nvim/tmux")
local Plugin = {}

-- Given a direction key (h, j, k, l), attempt to navigate within vim.
-- If the vim focus has not changed, relay the navigation command to tmux.
function Plugin.tmux_navigate(direction)
  starting_window = vim.fn.winnr()

  vim.cmd.wincmd(direction)

  ending_window = vim.fn.winnr()

  if Tmux.is_active() and starting_window == ending_window then
    Tmux.navigate(direction)
  end
end

return Plugin
