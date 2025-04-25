## Finds Dash Vector
# Gets position
execute store result score @s kits.x run data get entity @s Pos[0] 100
execute store result score @s kits.z run data get entity @s Pos[2] 100

# Teleports to target
tp @s @e[limit=1,sort=nearest,distance=..20,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity]

# Gets new position
execute store result score @s kits.dx run data get entity @s Pos[0] 100
execute store result score @s kits.dz run data get entity @s Pos[2] 100

# Vector math
scoreboard players operation @s kits.dx -= @s kits.x
scoreboard players operation @s kits.dz -= @s kits.z
