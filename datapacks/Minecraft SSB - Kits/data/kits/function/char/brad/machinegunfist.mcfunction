effect give @s minecraft:weakness 1 9 true
effect give @s minecraft:mining_fatigue 1 9 true
particle dust{color:[0.800,0.502,0.502],scale:3} ^ ^1.5 ^2 1 0.3 1 0 1 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute at @s positioned ^ ^1.5 ^2 as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run damage @s 1 bypass:player_attack by @p[tag=Brad]
