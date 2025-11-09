# tellraw @s {"storage": "tw:data", "nbt": "temp[-1].entry[0]", "color": "dark_green"}
# tellraw @s {"storage": "tw:data", "nbt": "temp[-1].entry.[1]", "color": "dark_blue"}
tellraw @s {"storage": "tw:data", "nbt": "temp[-1].entry", "color": "dark_red"}

#function tw:force_load/m_force_load with storage tw:data temp[-1].entry[]

#Add the code here
# 1. Store the values into basic storage tags (numbers)
execute store result score #temp.x data run data get storage tw:data temp[-1].entry[0].x
execute store result score #temp.z data run data get storage tw:data temp[-1].entry[1].z

# 2. Write them into a compound
data modify storage tw:temp arg set value {x:0, z:0}
execute store result storage tw:temp arg.x int 1 run scoreboard players get #temp.x data
execute store result storage tw:temp arg.z int 1 run scoreboard players get #temp.z data

# 3. Call the function passing that compound
function tw:force_load/m_force_load with storage tw:temp arg

#Ignore this
data remove storage tw:data temp[-1]
#Ignore this and this (do not change!)
execute if data storage tw:data temp[-1] run function tw:force_load/loop/loop_backwards with storage tw:data