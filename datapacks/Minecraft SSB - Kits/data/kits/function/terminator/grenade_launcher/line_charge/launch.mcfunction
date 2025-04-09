## Launches Line Charge Grenade
# Gets position then multiplies it by 1000 for accuracy
execute store result score @s kits.x run data get entity @s Pos[0] 1000
execute store result score @s kits.z run data get entity @s Pos[2] 1000

# Teleports forwards
tp @s ^ ^ ^0.01

# Gets new position then multiplies it by 1000 for accuracy
execute store result score @s kits.dx run data get entity @s Pos[0] 1000
execute store result score @s kits.dz run data get entity @s Pos[2] 1000

# Vector math
scoreboard players operation @s kits.dx -= @s kits.x
scoreboard players operation @s kits.dz -= @s kits.z

# Stores result into motion
execute store result entity @s Motion[0] double 0.5 run scoreboard players get @s kits.dx
execute store result entity @s Motion[2] double 0.5 run scoreboard players get @s kits.dz
