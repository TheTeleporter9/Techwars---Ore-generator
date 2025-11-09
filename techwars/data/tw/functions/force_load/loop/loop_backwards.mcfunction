tellraw @s {"storage": "tw:data", "nbt": "temp.x[-1]", "color": "dark_green"}
tellraw @s {"storage": "tw:data", "nbt": "temp.z[-1]", "color": "dark_blue"}
#tellraw @s {"storage": "tw:data", "nbt": "temp.position.x[0]", "color": "dark_red"}

data modify storage tw:data forece_load_data set value {"x":0,"z":0}

execute store result score $temp.x data run data get storage tw:data temp.x[-1]
execute store result score $temp.z data run data get storage tw:data temp.z[-1]

execute store result storage tw:data forece_load_data.x int 1 run scoreboard players get $temp.x data
execute store result storage tw:data forece_load_data.z int 1 run scoreboard players get $temp.x data


# 3. Call the function passing that compound
function tw:force_load/m_force_load with storage tw:data forece_load_data

#Ignore this
data remove storage tw:data temp.x[-1]
data remove storage tw:data temp.z[-1]



#Ignore this and this (do not change!)
execute if data storage tw:data temp.x[-1] if data storage tw:data temp.z[-1] run \
function tw:force_load/loop/loop_backwards with storage tw:data