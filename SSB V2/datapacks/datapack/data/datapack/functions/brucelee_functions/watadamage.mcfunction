function datapack:damage1
tag @s add BruceMarked
particle minecraft:cloud ~ ~1 ~ 1 1 1 0 50
particle minecraft:item minecraft:water_bucket ~ ~1 ~ 0 0 0 0.25 50
playsound minecraft:entity.generic.death neutral @a[distance=..40] ~ ~ ~ 10 0 1
kill @e[type=armor_stand,tag=WATA]