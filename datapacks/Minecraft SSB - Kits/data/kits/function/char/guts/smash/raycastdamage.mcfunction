scoreboard players add @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 5.. positioned ~ ~ ~ as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth,tag=!GutsDragonslayerSmashed] at @s run function kits:char/guts/smash/damage
execute as @s[scores={kits.raycastTick=..13}] positioned ^ ^ ^0.5 run function kits:char/guts/smash/raycastdamage
