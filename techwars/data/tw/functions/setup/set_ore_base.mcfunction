#set the base of the orevain in the correct place:
#execute if entity @e[tag=tw_ores] at @s run tp @s ~ ~1 ~
#execute if entity @e[tag=tw_ores] at @s run summon bat ~ ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,NoAI:1b,Tags:["tw","tw_base"]}

execute as @e[type=minecraft:bat,tag=tw_base] at @s positioned ~-5 ~ ~-3 run place template minecraft:ore_base
tp @e[type=bat,tag=tw_base] ~ ~-100000 ~
kill @e[type=bat,tag=tw_base]



# choose up to 3 random ore markers and place ore structures there
# tag the selected markers so we can clear the unselected ones
execute as @e[tag=tw_ores,sort=random,limit=3] store result score @s data run scoreboard players add @s data 1
# place structures at selected markers
execute as @e[tag=tw_ores,scores={data=1..}] at @s positioned ~-3 ~ ~-4 run function tw:force_load/loop/loop_backwards_init
# clean up unselected markers by removing them


return 0
