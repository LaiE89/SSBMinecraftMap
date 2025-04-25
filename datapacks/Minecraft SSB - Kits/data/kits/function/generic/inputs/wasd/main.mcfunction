## Tracks and Gets Player Movement Data
# get current pos
data modify storage kits:wasd Pos set from entity @s Pos
execute store result score .x kits.wasd run data get storage kits:wasd Pos[0] 100
execute store result score .z kits.wasd run data get storage kits:wasd Pos[2] 100

# save current pos
scoreboard players operation %temp kits.wasd.x = .x kits.wasd
scoreboard players operation %temp kits.wasd.z = .z kits.wasd

# calculate movement offset/motion (current - previous)
scoreboard players operation .x kits.wasd -= @s kits.wasd.x
scoreboard players operation .z kits.wasd -= @s kits.wasd.z

# processes movement data
function kits:generic/inputs/wasd/input

# save current pos as previous pos
scoreboard players operation @s kits.wasd.x = %temp kits.wasd.x
scoreboard players operation @s kits.wasd.z = %temp kits.wasd.z