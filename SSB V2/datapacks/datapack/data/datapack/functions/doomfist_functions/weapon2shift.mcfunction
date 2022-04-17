particle minecraft:cloud ~ ~ ~ 0.4 1 0.4 1 50
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 10 0 1
scoreboard players set @s RaycastTimer 0
execute at @s positioned ~ ~1.5 ~ run function datapack:doomfist_functions/doomfistpassive2
scoreboard players set @s Ability3CD 0