
execute as @e[tag=tw_mag] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_mag
execute as @e[tag=tw_tit] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_tit
execute as @e[tag=tw_tri] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_tri
execute as @e[tag=tw_ne] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_ne
execute as @e[tag=tw_ta] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_ta
execute as @e[tag=tw_to] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_to
execute as @e[tag=tw_li] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_li
execute as @e[tag=tw_bir] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_bir
execute as @e[tag=tw_ur] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_ur
execute as @e[tag=tw_su] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_su
execute as @e[tag=tw_nic] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_nic
execute as @e[tag=tw_led] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_led
execute as @e[tag=tw_zic] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_zic
execute as @e[tag=tw_tug] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_tug
execute as @e[tag=tw_bax] at @s positioned ~-3 ~ ~-4 if loaded ~ ~ ~ run function tw:ore_generation/ores/tw_bax

execute as @e[tag=tw_mag] at @s run say magnetite Loaded
execute as @e[tag=tw_tit] at @s run say titanium Loaded
execute as @e[tag=tw_tri] at @s run say trinitite Loaded
execute as @e[tag=tw_ne] at @s run say netherrite/anciten debreis Loaded
execute as @e[tag=tw_ta] at @s run say tar Loaded
execute as @e[tag=tw_to] at @s run say thorium Loaded
execute as @e[tag=tw_li] at @s run say lithium Loaded
execute as @e[tag=tw_bir] at @s run say byrillium Loaded
execute as @e[tag=tw_ur] at @s run say uranium Loaded
execute as @e[tag=tw_su] at @s run say sulfurLoaded
execute as @e[tag=tw_nic] at @s run say nicel Loaded
execute as @e[tag=tw_led] at @s run say lead Loaded
execute as @e[tag=tw_zic] at @s run say zinc Loaded
execute as @e[tag=tw_tug] at @s run say tungsten Loaded
execute as @e[tag=tw_bax] at @s run say bauxite Loaded


scoreboard players reset @s data
return 1 