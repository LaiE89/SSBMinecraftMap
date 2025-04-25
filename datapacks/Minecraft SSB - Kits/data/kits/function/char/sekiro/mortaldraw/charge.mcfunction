execute unless score @s kits.timer3 matches 3.. run return run function kits:char/sekiro/mortaldraw/reset

execute if score @s kits.criterion.shiftOn matches 5..14 run particle minecraft:dust{color:[1.500,0.000,0.000],scale:0.5} ~ ~1 ~ 0.4 0.6 0.4 0 5
execute if score @s kits.criterion.shiftOn matches 15 run playsound minecraft:entity.breeze.charge neutral @a[distance=..30] ~ ~ ~ 5 0 1
execute if score @s kits.criterion.shiftOn matches 15..25 run particle minecraft:dust{color:[1.500,0.000,0.000],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0 5
execute if score @s kits.criterion.shiftOn matches 25 run function kits:char/sekiro/mortaldraw/horizontalslash

execute if score @s kits.criterion.shiftOn matches 30..34 run particle minecraft:dust{color:[1.500,0.000,0.000],scale:0.5} ~ ~1 ~ 0.4 0.6 0.4 0 5
execute if score @s kits.criterion.shiftOn matches 30 run playsound minecraft:entity.breeze.charge neutral @a[distance=..30] ~ ~ ~ 5 0 1
execute if score @s kits.criterion.shiftOn matches 35..40 run particle minecraft:dust{color:[1.500,0.000,0.000],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0 5
execute if score @s kits.criterion.shiftOn matches 40 run function kits:char/sekiro/mortaldraw/verticalslash
execute if score @s kits.criterion.shiftOn matches 40 run function kits:char/sekiro/mortaldraw/reset