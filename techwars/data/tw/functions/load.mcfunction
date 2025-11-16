scoreboard objectives remove tw_random
scoreboard objectives remove data
scoreboard objectives remove posX
scoreboard objectives remove posZ

scoreboard objectives add data dummy
scoreboard objectives add tw_random dummy

scoreboard objectives add posX dummy
scoreboard objectives add posZ dummy

scoreboard players add CONST_CHUNK data 16

#data modify storage tw:data position set value {x:[],z:[]}


function tw:minute_counter

say load completed!