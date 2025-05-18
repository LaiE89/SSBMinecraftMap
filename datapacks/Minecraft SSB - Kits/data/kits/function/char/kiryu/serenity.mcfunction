effect give @s minecraft:regeneration 5 2 true
playsound minecraft:entity.player.levelup neutral @a[distance=..20] ~ ~ ~ 3 1.5 1
particle composter ~ ~1 ~ 0.4 0.5 0.4 0 50 force
scoreboard players set @s kits.timer2 0
scoreboard players set @s kits.ability1CD 0
