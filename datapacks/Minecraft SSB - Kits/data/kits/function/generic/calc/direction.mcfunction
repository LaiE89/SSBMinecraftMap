## Calculates the Player's Direction
execute store result score @s kits.timer run data get entity @s Rotation[0]

# facing north
execute if score @s kits.timer matches -45..45 run scoreboard players set @s kits.direction 0

# facing south
execute if score @s kits.timer matches -180..-135 run scoreboard players set @s kits.direction 1
execute if score @s kits.timer matches 135..180 run scoreboard players set @s kits.direction 1

# facing east
execute if score @s kits.timer matches 44..134 run scoreboard players set @s kits.direction 2

# facing west
execute if score @s kits.timer matches -134..-44 run scoreboard players set @s kits.direction 3