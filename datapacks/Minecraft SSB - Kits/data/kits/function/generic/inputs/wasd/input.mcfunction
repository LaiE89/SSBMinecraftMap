## Movement Status Reset and Check
# reset
scoreboard players set @s kits.wasd.w 0
scoreboard players set @s kits.wasd.a 0
scoreboard players set @s kits.wasd.s 0
scoreboard players set @s kits.wasd.d 0
scoreboard players set .dir kits.wasd 0

# check if stationary
execute if score .z kits.wasd matches 0 if score .x kits.wasd matches 0 run scoreboard players set .dir kits.wasd -999
# if movement detected
execute unless score .dir kits.wasd matches -999 run function kits:generic/inputs/wasd/calc_range