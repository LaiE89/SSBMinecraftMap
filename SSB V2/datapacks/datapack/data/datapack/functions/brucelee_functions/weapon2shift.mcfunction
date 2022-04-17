scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:brucelee_functions/bruceleepassive2
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..10] ~ ~ ~ 0.5 2 1
particle minecraft:composter ^ ^1 ^7 0.3 0.7 0.3 0 10
scoreboard players set @s Ability3CD 0