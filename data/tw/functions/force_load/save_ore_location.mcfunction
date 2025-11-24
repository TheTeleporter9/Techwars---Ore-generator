execute as @e[tag=tw_ores,distance=..5] at @s align xz run \
data modify storage tw:data position.x append from entity @s Pos[0]

execute as @e[tag=tw_ores,distance=..5] at @s align xz run \
data modify storage tw:data position.z append from entity @s Pos[2]


#Say the newest saved position
tellraw @p [{"text":"X: ","color":"gray"},\
{"nbt":"position.x[-1]","storage":"tw:data","color":"blue"},\
{"text":" | Z: ","color":"gray"},\
{"nbt":"position.z[-1]","storage":"tw:data","color":"dark_blue"},\
{"text":" | Position Saved","color":"green"}]

execute as @e[tag=tw_save] at @a run tp @s ~ ~-1000 ~
execute as @e[tag=tw_save] at @a run kill @s