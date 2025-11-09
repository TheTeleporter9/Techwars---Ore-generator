function tw:tw_random_1_5


execute as @a[tag=dev] at @s run tellraw @s [{"text":"Bauxite marker position: "},\
{"color":"green","nbt":"Pos[0]","entity":"@e[type=marker,limit=1,sort=nearest,tag=tw_ores,tag=tw_bax]"},\
{"text":", "},\
{"color":"green","nbt":"Pos[2]","entity":"@e[type=marker,limit=1,sort=nearest,tag=tw_ores,tag=tw_bax]"}]


execute if score $random tw_random matches 1 run place template minecraft:bax_1
execute if score $random tw_random matches 2 run place template minecraft:bax_2
execute if score $random tw_random matches 3 run place template minecraft:bax_3
execute if score $random tw_random matches 4 run place template minecraft:bax_4
execute if score $random tw_random matches 5 run place template minecraft:bax_5
execute if score $random tw_random matches 6 run place template minecraft:bax_6


