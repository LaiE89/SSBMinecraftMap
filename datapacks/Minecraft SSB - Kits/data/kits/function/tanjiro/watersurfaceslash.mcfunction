playsound minecraft:ambient.underwater.exit neutral @a[distance=..15] ~ ~ ~ 10 1 1
execute as @e[tag=!Tanjiro,distance=..6,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Tanjiro]
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 3 0 3 0 300 force
particle splash ~ ~1 ~ 3 0 3 0 300 force
scoreboard players set @s kits.ability3CD 0
