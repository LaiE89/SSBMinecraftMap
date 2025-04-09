# Plays Slashes Animation
scoreboard players add @s kits.timer 1
execute as @e[distance=..10,tag=!Siris,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:siris/blade/super/hit
function kits:siris/vfx/animations/slashes/score_tree/root
scoreboard players reset @s kits.timer2
