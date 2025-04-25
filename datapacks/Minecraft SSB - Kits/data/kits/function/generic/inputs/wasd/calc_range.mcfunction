## kits.wasd Direction Detection
# debouncing rotation
scoreboard players operation .ry kits.wasd = @s kits.wasd
execute store result score @s kits.wasd run data get entity @s Rotation[0] 1

# dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation in kits.math = .z kits.wasd
scoreboard players operation in1 kits.math = .x kits.wasd
function kits:generic/inputs/wasd/atan2
scoreboard players operation .dir kits.wasd = out kits.math
scoreboard players operation .dir kits.wasd += .ry kits.wasd

# map angle to the range 0..360
scoreboard players set %360 kits.constant 360
scoreboard players operation .dir kits.wasd %= %360 kits.constant

# kits.wasd based on dir angle ranges
execute if score .dir kits.wasd matches 23..157 run scoreboard players set @s kits.wasd.a 1
execute if score .dir kits.wasd matches 112..248 run scoreboard players set @s kits.wasd.s 1
execute if score .dir kits.wasd matches 203..337 run scoreboard players set @s kits.wasd.d 1
execute if score .dir kits.wasd matches 293..360 run scoreboard players set @s kits.wasd.w 1
execute if score .dir kits.wasd matches 0..67 run scoreboard players set @s kits.wasd.w 1