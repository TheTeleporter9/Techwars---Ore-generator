#set the base of the orevain in the correct place:
execute if entity @e[type=minecraft:bat,tag=tw_base] run function tw:setup/set_ore_base

execute as @e[tag=tw_ores] at @s store result score @s posX run \
data get entity @s Pos[0] 1

execute as @e[tag=tw_ores] at @s store result score @s posZ run \
data get entity @s Pos[2] 1

execute as @e[tag=tw_save] at @s run \
function tw:force_load/save_ore_location

execute as @e[tag=tw_remove] at @s run kill @e[tag=tw_ores,distance=..5,sort=nearest,limit=1]
execute as @e[tag=tw_remove] at @s run particle flash ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=tw_remove] at @s run playsound entity.generic.explode master @a[tag=dev] ~ ~ ~
execute as @e[tag=tw_remove] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=tw_remove] at @s run kill @s

execute as @e[tag=tw_ores] at @s if entity @p[distance=..20,tag=dev] run \
particle composter ~ ~ ~ 0.1 0.2 0.1 0 10 normal

execute as @e[type=minecraft:item,nbt={Item:{id:"create:wrench"}}] at @s if block ~ ~-1 ~ refinedstorage:machine_casing run \
function tw:extractor/placement/placement_check

execute as @a at @s at @e[type=block_display,tag=tw_extr,distance=..10] run \
function tw:extractor/placement/break_check