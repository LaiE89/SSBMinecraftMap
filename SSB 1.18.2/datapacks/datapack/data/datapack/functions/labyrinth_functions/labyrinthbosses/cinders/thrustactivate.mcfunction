playsound minecraft:entity.iron_golem.repair neutral @a[distance=..50] ~ ~ ~ 2 0 1
tp @s ~ ~ ~ facing entity @p[tag=LabyrinthCinder]
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:labyrinth_functions/labyrinthbosses/cinders/thrustraycast
