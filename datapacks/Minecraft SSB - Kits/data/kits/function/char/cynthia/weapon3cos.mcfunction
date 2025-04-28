effect clear @s
effect give @s minecraft:instant_health 1 3 true
effect give @s minecraft:weakness 2 9 true
effect give @s minecraft:mining_fatigue 2 9 true
particle composter ~ ~1 ~ 0.5 0.7 0.5 0 100 force
playsound minecraft:entity.player.levelup neutral @a[distance=..20] ~ ~ ~ 3 0.85 1
scoreboard players set @s kits.ability5CD 0
scoreboard players set @s kits.ability1CD 0
scoreboard players set @s kits.ability2CD 0
scoreboard players set @s kits.ability3CD 0
scoreboard players set @s kits.ability4CD 0
