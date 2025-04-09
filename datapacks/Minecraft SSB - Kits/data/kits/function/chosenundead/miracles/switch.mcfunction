playsound minecraft:ui.loom.select_pattern neutral @a[distance=..10] ~ ~ ~ 1 1.5 1
scoreboard players add @s kits.timer5 1
scoreboard players set @s[scores={kits.timer5=3..}] kits.timer5 0
scoreboard players set @s kits.ability4CD 0
