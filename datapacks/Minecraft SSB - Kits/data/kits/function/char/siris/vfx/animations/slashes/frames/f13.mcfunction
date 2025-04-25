# Slashes Frame 13
execute as @e[distance=..10,tag=!Siris,tag=!InLabyrinth,type=!#kits:non_entity] at @s rotated as @p[tag=Siris] positioned ~ ~1 ~ run function kits:char/siris/vfx/particles/ripple/type3
scoreboard players reset @s kits.timer
