execute positioned ^ ^1.35 ^4 if entity @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Luffy,tag=!InLabyrinth] run scoreboard players add @p[tag=Luffy,tag=!LuffyGear] kits.timer2 1
execute positioned ^ ^1.35 ^4 run execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Luffy,tag=!InLabyrinth] at @s run damage @s 1 bypass:player_attack by @p[tag=Luffy]
particle dust{color:[0.800,0.600,0.400],scale:3} ^ ^1.5 ^4 1 0.3 1 0 1 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 2 1

scoreboard players add @s kits.timer 1
tag @s[scores={kits.timer=20..}] remove LuffyGatling
scoreboard players reset @s[scores={kits.timer=20..}] kits.timer