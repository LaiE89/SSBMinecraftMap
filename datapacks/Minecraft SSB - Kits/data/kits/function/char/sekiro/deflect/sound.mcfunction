scoreboard players reset @s kits.timer2
execute if score @s kits.criterion.block matches ..90 store result score @s kits.timer2 run random value 0..1
execute if score @s kits.timer2 matches 0 run playsound minecraft:sekiro.deflect_small neutral @a[distance=..30] ~ ~ ~ 1 1 1
execute if score @s kits.timer2 matches 1 run playsound minecraft:sekiro.deflect_small2 neutral @a[distance=..30] ~ ~ ~ 1 1 1
execute if score @s kits.criterion.block matches 91..160 run playsound minecraft:sekiro.deflect_medium neutral @a[distance=..30] ~ ~ ~ 1 1 1
execute if score @s kits.criterion.block matches 161.. run playsound minecraft:sekiro.deflect_big neutral @a[distance=..30] ~ ~ ~ 1 1 1