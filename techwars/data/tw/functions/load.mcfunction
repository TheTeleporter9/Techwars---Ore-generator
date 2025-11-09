scoreboard objectives remove tw_random
scoreboard objectives remove data
scoreboard objectives remove posX
scoreboard objectives remove posZ

scoreboard objectives add data dummy
scoreboard objectives add tw_random dummy

scoreboard objectives add posX dummy
scoreboard objectives add posZ dummy

data modify storage tw:data array set value [{entry:[{x:1},{z:1}]},{entry:[{x:2},{z:2}]},{entry:[{x:3},{z:3}]}]


function tw:minute_counter

say load completed!