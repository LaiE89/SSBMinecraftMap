tp @s ^ ^ ^-1.25
particle dust{color:[1.000,1.000,1.000],scale:3} ~ ~ ~ 0 0 0 0 50 force
particle end_rod ^ ^ ^ 0.2 0.2 0.2 0 10 force
particle end_rod ^ ^ ^0.5 0.2 0.2 0.2 0 10 force
particle end_rod ^ ^ ^1 0.2 0.2 0.2 0 10 force
particle end_rod ^ ^ ^1.5 0.2 0.2 0.2 0 10 force
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] at @s run function kits:sans/karma2
