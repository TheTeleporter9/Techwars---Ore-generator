$forceload add $(x) $(z) $(x) $(z)

$tellraw @s[tag=dev] [{"text":"Force loaded ", "color":"gold"},{"text": "$(x)","color": "dark_red"},{"text":" | ", "color":"white"},{"text":"$(z)","color": "dark_blue"}, {"text":" chunk", "color":"gold"}]

function tw:ore_generation/place_ore_structure

$forceload remove $(x) $(z)

tellraw @a[tag=dev] {"text":"<Server> force load removed","color": "aqua"}
tellraw @a[tag=dev] "    "

