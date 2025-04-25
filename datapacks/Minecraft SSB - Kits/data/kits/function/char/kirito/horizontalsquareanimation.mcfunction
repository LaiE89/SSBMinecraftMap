scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches ..3 run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force 
execute if score @s kits.timer matches 4.. run function kits:char/kirito/horizontalsquareparticles