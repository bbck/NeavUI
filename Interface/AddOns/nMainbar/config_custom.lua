local _, nMainbar = ...
local player_name, _ = UnitName("player")

nMainbar.Config.stanceBar.hide = true

if player_name ~= 'Thehermit' then
  nMainbar.Config.button.showKeybinds = true
end
