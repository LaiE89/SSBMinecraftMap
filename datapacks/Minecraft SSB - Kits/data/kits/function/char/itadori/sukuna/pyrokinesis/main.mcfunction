## Execute at Pyrokinesis
# Damage and movement
execute as @e[distance=..2,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] at @s run function kits:char/itadori/sukuna/pyrokinesis/hit
execute positioned as @s anchored feet facing entity @e[limit=1,sort=nearest,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.5 ~ ~
execute unless entity @e[limit=1,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] run tp @s ^ ^ ^1.5

# VFX
particle flash ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 2.. positioned ^0 ^0.0375 ^-0.0375 run function kits:char/itadori/vfx/particles/arrow
