execute positioned ^ ^1.35 ^3 run execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run damage @s 1 bypass:player_attack by @p[tag=Cynthia]
particle dust{color:[0.000,1.000,1.000],scale:3} ^ ^1.5 ^3 1 0.3 1 0 1 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 2 1
scoreboard players add @s kits.timer5 1
execute as @s[scores={kits.timer5=20..}] run function kits:char/cynthia/lucario/closecombatend
