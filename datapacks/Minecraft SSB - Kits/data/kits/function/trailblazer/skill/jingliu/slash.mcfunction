# Execute at Energy Slashes
execute as @e[distance=..2,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:trailblazer/skill/jingliu/hit
execute positioned ^-0.0625 ^1 ^0.25 run function kits:trailblazer/vfx/particles/jingliu/skill
tp @s ^ ^ ^2
