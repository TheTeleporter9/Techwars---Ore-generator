tellraw @s {"storage": "tw:data", "nbt": "temp.x[-1]", "color": "dark_green"}
tellraw @s {"storage": "tw:data", "nbt": "temp.z[-1]", "color": "dark_blue"}
#tellraw @s {"storage": "tw:data", "nbt": "temp.position.x[0]", "color": "dark_red"}

data modify storage tw:data forece_load_data set value {"x":0,"z":0}

execute store result score $temp.x data run data get storage tw:data temp.x[-1]
execute store result score $temp.z data run data get storage tw:data temp.z[-1]

execute store result storage tw:data forece_load_data.x int 1 run scoreboard players get $temp.x data
execute store result storage tw:data forece_load_data.z int 1 run scoreboard players get $temp.z data

#Load the base chunk
function tw:force_load/m_force_load with storage tw:data forece_load_data

#Load the chunks around the current chunk that is beeing presets

scoreboard players operation $addLoad.x data = $temp.x data 
scoreboard players operation $addLoad.z data = $temp.z data

#*NORTH
scoreboard players operation $addLoad.z data -= CONST_CHUNK data
scoreboard players operation $addLoad.x data = $temp.x data

execute store result storage tw:data forece_load_data.x int 1 run scoreboard players get $addLoad.x data
execute store result storage tw:data forece_load_data.z int 1 run scoreboard players get $addLoad.z data

function tw:force_load/m_force_load with storage tw:data forece_load_data

scoreboard players operation $addLoad.x data = $temp.x data 
scoreboard players operation $addLoad.z data = $temp.z data

#*SOUTH
scoreboard players operation $addLoad.z data += CONST_CHUNK data
scoreboard players operation $addLoad.x data = $temp.x data

execute store result storage tw:data forece_load_data.x int 1 run scoreboard players get $addLoad.x data
execute store result storage tw:data forece_load_data.z int 1 run scoreboard players get $addLoad.z data

function tw:force_load/m_force_load with storage tw:data forece_load_data

scoreboard players operation $addLoad.x data = $temp.x data 
scoreboard players operation $addLoad.z data = $temp.z data

#*EAST
scoreboard players operation $addLoad.x data += CONST_CHUNK data
scoreboard players operation $addLoad.z data = $temp.x data

execute store result storage tw:data forece_load_data.x int 1 run scoreboard players get $addLoad.x data
execute store result storage tw:data forece_load_data.z int 1 run scoreboard players get $addLoad.z data

function tw:force_load/m_force_load with storage tw:data forece_load_data

scoreboard players operation $addLoad.x data = $temp.x data 
scoreboard players operation $addLoad.z data = $temp.z data

#*WEST
scoreboard players operation $addLoad.x data -= CONST_CHUNK data
scoreboard players operation $addLoad.z data = $temp.x data

execute store result storage tw:data forece_load_data.x int 1 run scoreboard players get $addLoad.x data
execute store result storage tw:data forece_load_data.z int 1 run scoreboard players get $addLoad.z data

function tw:force_load/m_force_load with storage tw:data forece_load_data

scoreboard players operation $addLoad.x data = $temp.x data 
scoreboard players operation $addLoad.z data = $temp.z data

#Ignore this
data remove storage tw:data temp.x[-1]
data remove storage tw:data temp.z[-1]



#Ignore this and this (do not change!)
execute if data storage tw:data temp.x[-1] if data storage tw:data temp.z[-1] run \
function tw:force_load/loop/loop_backwards with storage tw:data