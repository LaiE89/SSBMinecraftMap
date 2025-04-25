# example call: function kits:generic/physics/launch {"sVert":"0.1","sHorz":"1","power":"0.002"}
## Launch Function
# get pos
execute store result score @s kits.x run data get entity @s Pos[0] 1000
execute store result score @s kits.y run data get entity @s Pos[1] 1000
execute store result score @s kits.z run data get entity @s Pos[2] 1000

# get point
$tp @s ^ ^$(sVert) ^$(sHorz)
execute store result score @s kits.dx run data get entity @s Pos[0] 1000
execute store result score @s kits.dy run data get entity @s Pos[1] 1000
execute store result score @s kits.dz run data get entity @s Pos[2] 1000

# get vector from pos to point
scoreboard players operation @s kits.dx -= @s kits.x
scoreboard players operation @s kits.dy -= @s kits.y
scoreboard players operation @s kits.dz -= @s kits.z

# store vector into motion
$execute store result entity @s Motion[0] double $(power) run scoreboard players get @s kits.dx
$execute store result entity @s Motion[1] double $(power) run scoreboard players get @s kits.dy
$execute store result entity @s Motion[2] double $(power) run scoreboard players get @s kits.dz

# reset
scoreboard players reset @s kits.x
scoreboard players reset @s kits.y
scoreboard players reset @s kits.z
scoreboard players reset @s kits.dx
scoreboard players reset @s kits.dy
scoreboard players reset @s kits.dz