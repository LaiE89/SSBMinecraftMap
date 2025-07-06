scoreboard players add @s kits.timer 1
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/edward/deconstruct/debrisdamage2
kill @s[scores={kits.timer=20..}]
