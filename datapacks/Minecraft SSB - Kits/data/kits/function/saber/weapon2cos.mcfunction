scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:saber/saberpassive2
effect give @s minecraft:absorption 2 1 true
particle end_rod ~ ~1 ~ 0.4 1 0.4 0 30 force
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.4 1 0.4 0 100 force
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0 1
scoreboard players set @s kits.ability2CD 0
