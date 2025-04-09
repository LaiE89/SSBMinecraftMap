execute at @s rotated ~ 0 run function kits:edward/circleparticles2
playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
tag @s add EdwardBreak
scoreboard players reset @s kits.timer3
scoreboard players reset @s kits.timer2
effect clear @s minecraft:strength
scoreboard players set @s kits.ability4CD 0
