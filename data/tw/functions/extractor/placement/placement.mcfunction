# give @p crate:wrench
# kill @e[type=item,nbt={Item:{id:"create:wrench"}}]


execute align xyz positioned ~-0.05 ~ ~-0.05 \
unless entity @e[type=block_display,tag=tw_extr,distance=..3,limit=1] run \
summon block_display ~1 ~-3 ~1 \
{Tags:["tw","tw_extr"],transformation:\
{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
translation:[-1f,-3f,-1f],scale:[3.1f,3.1f,3.1f]},\
block_state:{Name:"create:fluid_tank"}}

execute as @e[type=block_display,tag=tw_extr] run scoreboard players add @s data 0

execute as @s at @s unless block ~ ~3 ~ air if entity @e[type=block_display,tag=tw_extr,distance=..3] run \
place template minecraft:extractor_empty ~-1 ~3 ~-1


