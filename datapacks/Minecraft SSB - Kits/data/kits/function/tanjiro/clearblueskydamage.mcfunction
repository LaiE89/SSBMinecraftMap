execute at @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] run particle falling_lava ~ ~1 ~ 0.4 1 0.4 0 100 force
playsound minecraft:entity.generic.explode neutral @a[distance=..15] ~ ~ ~ 10 2 1
execute as @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,distance=..6,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Tanjiro]
effect give @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,distance=..6,tag=!InLabyrinth] minecraft:wither 1 9 true
execute at @p[tag=Tanjiro] run particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^1 ^2 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^1 ^2 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^1 ^-2 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^2 ^-1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^2 ^1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^ ^1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^ ^-1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[1.000,0.251,0.000],scale:1} ^ ^2.5 ^ 0.2 0.2 0.2 0 100 force
scoreboard players set @s kits.ability2CD 0
