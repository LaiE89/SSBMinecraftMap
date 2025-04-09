playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute as @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,distance=..8,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Tanjiro]
effect give @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,distance=..8,tag=!InLabyrinth] minecraft:wither 1 9 true
particle dust{color:[1.000,0.502,0.000],scale:1} ~ ~1 ~ 4 0 4 0 300 force
particle flame ~ ~1 ~ 4 0 4 0 300 force
scoreboard players set @s kits.ability3CD 1
