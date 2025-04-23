scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:saber/saberpassive3
effect give @s minecraft:absorption 2 1 true
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0 1
scoreboard players set @s kits.ability2CD 0
