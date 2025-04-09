effect clear @s
effect give @s minecraft:instant_health 1 3 true
particle composter ~ ~1 ~ 0.5 0.7 0.5 0 100 force
playsound minecraft:entity.player.levelup neutral @a[distance=..20] ~ ~ ~ 3 0.85 1
scoreboard players set @s kits.ability5CD 0
