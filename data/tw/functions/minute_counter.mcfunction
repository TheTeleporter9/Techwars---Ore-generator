
scoreboard players add $time data 1

schedule function tw:minute_counter 60s replace

execute if score $time data matches 300 run function tw:setup/set_ore_base

