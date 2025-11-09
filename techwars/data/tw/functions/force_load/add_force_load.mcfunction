execute as @s at @e[tag=tw_ores,distance=..3] store result storage tw:cunk_list pos.x int 1 run \
data get entity @s Pos[0] 1 

execute as @s at @e[tag=tw_ores,distance=..3] store result storage tw:cunk_list pos.x int 1 run \
data get entity @s Pos[0] 1 

function tw:force_load/add_force_load with storage tw:cunk_list pos.x