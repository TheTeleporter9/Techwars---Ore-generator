$forceload $(x) $(z)

$tellraw @s[tag=dev] [{"text":"Force loaded ", "color":"gold"},{"text": "$(x)","color": "dark_red"},{"text":" | ", "color":"white"},{"text":"$(z)","color": "dark_blue"}, {"text":" chunk", "color":"gold"}]

function tw:setup/set_ore_base

$forceload remove $(x) $(z)