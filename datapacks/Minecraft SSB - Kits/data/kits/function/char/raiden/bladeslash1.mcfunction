tp @s ~ ~ ~ ~90 0
execute store result score @s kits.timer run data get entity @s Rotation[0]
scoreboard players set @s kits.timer2 180
# Changing to Position Rotation and setting kits.timer4 to start rotation
execute store result score @s kits.timer4 run scoreboard players operation @s kits.timer += @s kits.timer2
# Adding 180 degrees to rotation (ending rotation)
scoreboard players operation @s kits.timer += @s kits.timer2
execute at @s run function kits:char/raiden/blademodecircle
