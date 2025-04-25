particle cloud ~ ~ ~ 0.4 1 0.4 1 50 force
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 10 0 1
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/doomfist/doomfistpassive2
scoreboard players set @s kits.ability3CD 0
