scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/brucelee/bruceleepassive2
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..10] ~ ~ ~ 0.5 2 1
particle composter ^ ^1 ^7 0.3 0.7 0.3 0 10 force
scoreboard players set @s kits.ability3CD 0
