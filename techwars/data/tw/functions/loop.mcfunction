#set the base of the orevain in the correct place:
execute if entity @e[type=minecraft:bat,tag=tw_base] run function tw:setup/set_ore_base

execute as @e[tag=tw_ores] at @s store result score @s posX run \
data get entity @s Pos[0] 1

execute as @e[tag=tw_ores] at @s store result score @s posZ run \
data get entity @s Pos[2] 1

execute as @e[tag=tw_save] at @s run \
function tw:force_load/save_ore_location

execute as @e[tag=tw_ores] at @s if entity @p[distance=..20,tag=dev] run \
particle composter ~ ~ ~ 0.1 0.2 0.1 0 10 normal