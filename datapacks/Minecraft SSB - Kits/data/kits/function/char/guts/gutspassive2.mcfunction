scoreboard players add @s kits.raycastTick 1

execute if entity @s[tag=pivotswing,scores={kits.raycastTick=0..15}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth,tag=!GutsCleavedDmg] at @s run function kits:char/guts/pivotswingdamage
execute as @s[scores={kits.raycastTick=0..15}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth,tag=!GutsCleavedDmg] at @s run function kits:char/guts/cleavedamage
execute as @s[scores={kits.raycastTick=0..15}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] at @s run tag @s add GutsCleaved 
execute as @s[scores={kits.raycastTick=0..15}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] at @s run tag @s add GutsCleavedDmg

execute as @s[scores={kits.raycastTick=..13}] positioned ^ ^ ^0.5 run function kits:char/guts/gutspassive2
