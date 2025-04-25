# Execute at Malevolent Shrine
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 5.. positioned ^0.09375 ^-0.1875 ^0 run function kits:char/itadori/vfx/particles/shrine
effect give @e[distance=..20,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] slowness 1 1 true
