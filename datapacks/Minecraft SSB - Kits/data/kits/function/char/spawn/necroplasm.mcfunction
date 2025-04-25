$scoreboard players add @s kits.timer3 $(value)
execute if score @s kits.timer3 matches 101.. run scoreboard players set @s kits.timer3 100
particle totem_of_undying ~ ~1 ~ 0.4 0.4 0.4 0.2 20 force
playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 5 1 1
particle minecraft:flame ~ ~1 ~ 0.4 0.4 0.4 0.2 20