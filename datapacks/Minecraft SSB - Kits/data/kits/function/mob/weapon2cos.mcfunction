effect give @s minecraft:absorption 1 1 true
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.shulker.shoot neutral @a[distance=..20] ~ ~ ~ 3 0.5 1
scoreboard players set @s kits.ability4CD 0
