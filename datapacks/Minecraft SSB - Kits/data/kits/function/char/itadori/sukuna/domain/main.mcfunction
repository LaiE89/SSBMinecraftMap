# Execute at Malevolent Shrine
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 5.. positioned ^0.09375 ^-0.1875 ^0 run function kits:char/itadori/vfx/particles/shrine
effect give @e[distance=..20,type=!#kits:non_entity,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible] slowness 1 0 true
