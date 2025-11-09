function tw:tw_random_1_5
forceload add ~ ~
scoreboard players add $loaded data 1
execute as @a[tag=dev] run tellraw @a [{"text":"Marker ore position: "},{"color":"green","score":{"name":"@s","objective":"posX"}},{"text":", "},{"color":"green","score":{"name":"@s","objective":"posZ"}}]

execute if score $random tw_random matches 1 run place template minecraft:led_1
execute if score $random tw_random matches 2 run place template minecraft:led_2
execute if score $random tw_random matches 3 run place template minecraft:led_3
execute if score $random tw_random matches 4 run place template minecraft:led_4
execute if score $random tw_random matches 5 run place template minecraft:led_5
execute if score $random tw_random matches 6 run place template minecraft:led_6

forceload remove ~ ~