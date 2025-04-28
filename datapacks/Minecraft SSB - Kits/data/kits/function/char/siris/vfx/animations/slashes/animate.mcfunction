# Plays Slashes Animation
scoreboard players add @s kits.timer 1
execute as @e[type=!#kits:non_entity,distance=..2,tag=!Siris,tag=!InLabyrinth,tag=!Invincible,limit=1,sort=nearest] at @s run function kits:char/siris/blade/super/hit
scoreboard players reset @s kits.timer2
