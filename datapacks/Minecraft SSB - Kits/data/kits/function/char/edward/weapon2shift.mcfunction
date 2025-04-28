execute at @s rotated ~ 0 run function kits:char/edward/circleparticles2
playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
tag @s add EdwardBreak
function kits:char/edward/transmuteweaponback
scoreboard players reset @s kits.timer2
scoreboard players set @s kits.ability4CD 0
