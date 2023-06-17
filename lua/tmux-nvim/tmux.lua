local Tmux = {}
local tmux_env = os.getenv("TMUX")
local tmux_navigations = { h = "L", j = "D", k = "U", l = "R" }

-- Boolean that returns whether currently inside a tmux session.
function Tmux.is_active()
  return not(tmux_env == nil)
end

-- Excecute a tmux command.
function Tmux.execute(command)
  if not Tmux.is_active() then return end

  return os.execute("tmux " .. command)
end

-- The current tmux pane.
function Tmux.pane()
  if not Tmux.is_active() then return end

  return os.getenv("TMUX_PANE")
end

-- Navigates tmux focus via h, j, k or l
function Tmux.navigate(key)
  direction = tmux_navigations[key]
  command   = string.format("select-pane -t %s -%s", Tmux.pane(), direction)

  Tmux.execute(command)
end

return Tmux
