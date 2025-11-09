#Clear temp storage
data remove storage tw:data temp

#Copy arrray to temp storage
data modify storage tw:data temp set from storage tw:data array

#Run loop
function tw:force_load/loop/loop_backwards with storage tw:data