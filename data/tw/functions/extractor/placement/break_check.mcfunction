execute as @e[type=block_display,tag=tw_extr] store result score @s data run \
fill ~ ~-3 ~ ~2 ~-1 ~2 stone replace air 

execute as @e[type=block_display,tag=tw_extr,scores={data=1..}] run kill @e[type=block_display,tag=tw_extr,distance=..2]