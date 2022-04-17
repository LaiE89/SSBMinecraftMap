scoreboard players set @s RaycastTimer2 0
execute at @s positioned ~ ~1.35 ~ run function datapack:tracer_functions/tracerpassive3
playsound minecraft:entity.enderman.teleport neutral @a[distance=..10] ~ ~ ~ 10 2 1
scoreboard players remove @s Ability4CD 1
tag @s add TracerBlinkCD