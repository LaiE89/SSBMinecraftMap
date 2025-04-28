execute at @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] run particle falling_water ~ ~1 ~ 0.4 1 0.4 0 100 force

playsound minecraft:entity.player.splash.high_speed neutral @a[distance=..15] ~ ~ ~ 10 2 1
execute as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] at @s run effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true
execute as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Tanjiro]
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^1 ^2 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^1 ^-2 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^2 ^-1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^2 ^1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^ ^1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^ ^-1.5 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^2.5 ^ 0.2 0.2 0.2 0 100 force
particle dust{color:[0.000,1.000,1.000],scale:1} ^ ^-0.5 ^ 0.2 0.2 0.2 0 100 force
scoreboard players set @s kits.ability2CD 0
