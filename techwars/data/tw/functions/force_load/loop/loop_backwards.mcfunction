tellraw @s {"storage": "tw:data", "nbt": "temp.position.x[-1]", "color": "dark_green"}
tellraw @s {"storage": "tw:data", "nbt": "temp.position.z[-1]", "color": "dark_blue"}
#tellraw @s {"storage": "tw:data", "nbt": "temp.position.x[0]", "color": "dark_red"}


#Add the code here
# 1. Store the values into basic storage tags (numbers)
execute store result score #temp.x data run data get storage tw:data temp[-1].entry[0].x
execute store result score #temp.z data run data get storage tw:data temp[-1].entry[1].z

# 3. Call the function passing that compound
function tw:force_load/m_force_load with storage tw:temp arg

#Ignore this
data remove storage tw:data temp.position.x[-1]
data remove storage tw:data temp.position.z[-1]
#Ignore this and this (do not change!)
execute if data storage tw:data temp.position.x[-1] if data storage tw:data temp.position.z[-1] run \
function tw:force_load/loop/loop_backwards with storage tw:data