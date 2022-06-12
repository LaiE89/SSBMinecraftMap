playsound minecraft:block.fire.extinguish neutral @a[distance=..50] ~ ~ ~ 2 2 1
tp @s @e[type=zombie,tag=Cinder,limit=1]

execute positioned ~ ~2.5 ~ run function datapack:labyrinth_functions/labyrinthbosses/cinders/sunlightspearparticles
