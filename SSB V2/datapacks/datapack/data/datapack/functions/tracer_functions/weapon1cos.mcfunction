scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:tracer_functions/tracerpassive2
playsound minecraft:entity.firework_rocket.blast neutral @a[distance=..10] ~ ~ ~ 1 2 1
scoreboard players remove @s Ability5CD 1
