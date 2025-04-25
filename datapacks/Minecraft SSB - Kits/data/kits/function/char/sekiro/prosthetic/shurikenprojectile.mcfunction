tp @s ^ ^ ^2
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/sekiro/prosthetic/shurikendamage
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force
#particle minecraft:soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0 2 force