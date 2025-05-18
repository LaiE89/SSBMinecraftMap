scoreboard players add @s kits.raycastTick 1

execute as @s[scores={kits.raycastTick=0..15}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth,tag=!GutsCleavedDmg] at @s run function kits:char/guts/cleave/damage

execute as @s[scores={kits.raycastTick=..13}] positioned ^ ^ ^0.5 run function kits:char/guts/cleave/raycast
