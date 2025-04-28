## When Point is Clicked On
# Position restrictions
#execute unless block ~ ~ ~ #kits:passable positioned as @p[tag=Siris] rotated as @p[tag=Siris] run tp @s ^ ^1.5 ^3
#execute positioned ^ ^ ^3 unless entity @p[distance=..2,tag=Siris] positioned as @p[tag=Siris] rotated as @p[tag=Siris] run tp @s ^ ^1.5 ^3
execute unless entity @e[type=!#kits:non_entity,distance=..2,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] positioned as @e[type=!#kits:non_entity,tag=!InLabyrinth,tag=!Invincible,tag=!Siris,limit=1,sort=nearest] run tp @s ~ ~1.5 ~ 

# Change scores
scoreboard players add @s kits.timer 1
scoreboard players set @s kits.timer2 18

# Store current position
execute store result score @s kits.x run data get entity @s Pos[0] 10
execute store result score @s kits.y run data get entity @s Pos[1] 10
execute store result score @s kits.z run data get entity @s Pos[2] 10

# Generate random value
execute store result score @s kits.dx run random value -8..8
execute store result score @s kits.dy run random value -8..8
execute store result score @s kits.dz run random value -8..8

# Add current to random
scoreboard players operation @s kits.x += @s kits.dx
scoreboard players operation @s kits.y += @s kits.dy
scoreboard players operation @s kits.z += @s kits.dz

# Apply new position
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s kits.x
execute store result entity @s Pos[1] double 0.1 run scoreboard players get @s kits.y
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s kits.z