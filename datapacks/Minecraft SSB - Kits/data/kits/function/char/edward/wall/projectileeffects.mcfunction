scoreboard players add @s kits.timer 1
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1.5 ~ 0.2 0.2 0.2 0 10 force
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth] run function kits:char/edward/wall/projectiledamage

execute if score @s kits.timer matches 19 run kill @s
tp @s ^ ^ ^1.5
