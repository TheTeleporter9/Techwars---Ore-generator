function tw:force_load/process_force_loads

execute as @e[tag=tw_mag] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_mag
execute as @e[tag=tw_tit] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_tit
execute as @e[tag=tw_tri] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_tri
execute as @e[tag=tw_ne] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_ne
execute as @e[tag=tw_ta] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_ta
execute as @e[tag=tw_to] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_to
execute as @e[tag=tw_li] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_li
execute as @e[tag=tw_bir] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_bir
execute as @e[tag=tw_ur] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_ur
execute as @e[tag=tw_su] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_su
execute as @e[tag=tw_nic] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_nic
execute as @e[tag=tw_led] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_led
execute as @e[tag=tw_zic] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_zic
execute as @e[tag=tw_tug] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_tug
execute as @e[tag=tw_bax] at @s positioned ~-3 ~ ~-4 run function tw:ore_generation/ores/tw_bax

scoreboard players reset @s data
return 0