execute as @e[tag=tw_ores,distance=..5] at @s run \
data modify storage tw:chunk_list position.x append from entity @s Pos[0]

execute as @e[tag=tw_ores,distance=..5] at @s run \
data modify storage tw:chunk_list position.z append from entity @s Pos[2]


#Say the newest saved position
tellraw @p [{"text":"X: ","color":"gray"},{"nbt":"position.x[-1]","storage":"tw:chunk_list","color":"dark_blue"},{"text":" | Z: ","color":"gray"},{"nbt":"position.z[-1]","storage":"tw:chunk_list","color":"dark_blue"},{"text":" | Position Saved","color":"dark_green"}]