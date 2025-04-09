scoreboard players reset @s kits.timer4
scoreboard players operation @s kits.timer2 = @s kits.timer3
scoreboard players remove @s[scores={kits.timer2=1..}] kits.timer2 50
scoreboard players reset @s kits.timer3
scoreboard players set @s[scores={kits.timer2=..-1}] kits.timer2 0
particle falling_lava ~ ~1.75 ~ 0.35 0.35 0.35 0 100 force
playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
effect clear @s speed
effect clear @s resistance
effect clear @s strength
tag @s remove KratosRage