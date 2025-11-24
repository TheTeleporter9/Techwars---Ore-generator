execute as @s at @s if block ~ ~3 ~ air unless entity @e[type=block_display,tag=tw_extr,distance=..3] run \
place template minecraft:extractor_n ~-1 ~3 ~-1



#oben rechts
# execute positioned ~-3 ~3 ~ \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

# #oben mitte
# execute positioned ~-2 ~3 ~ \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

# #oben links
# execute positioned ~ ~3 ~ \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

# #mitte rechts
# execute positioned ~-2 ~3 ~-1 \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

#mitte mitte
execute if entity @e[type=item] positioned ~-1 ~3 ~-1 \
if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
function tw:extractor/placement/placement

execute if entity @e[type=item] positioned ~-1 ~3 ~-1 \
unless blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
place template minecraft:extractor_empty ~ ~ ~
# execute as @s at @s unless block ~ ~3 ~ air unless entity @e[type=block_display,tag=tw_extr,distance=..3] run \
# place template minecraft:extractor_empty ~-1 ~3 ~-1


# execute positioned ~-1 ~3 ~-1 \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# fill ~ ~ ~ ~3 ~3 ~3 air

# #mitte links
# execute positioned ~-3 ~3 ~-1 \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

# #unten rechts
# execute positioned ~ ~3 ~-3 \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

# #unten mitte
# execute positioned ~ ~3 ~-2 \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi

# #unten links
# execute positioned ~ ~3 ~ \
# if blocks ~ ~ ~ ~3 ~3 ~3 ~ ~-6 ~ masked run \
# say hi
