## Execute at Shrine
# kits.timer for a sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches ..29 run tp @p[tag=Abian] ~ ~ ~
execute if score @s kits.timer matches 30 run execute as @p[tag=Abian] at @s positioned ~ ~1.5 ~ run function kits:char/abian/moves/labyrinth_shop/dash
execute if score @s kits.timer matches 58 if entity @e[type=!#kits:non_entity,tag=AbianLabyrinthShopHit] run function kits:char/abian/moves/labyrinth_shop/death

# VFX
execute if score @p[tag=Abian] kits.timer7 matches 4 positioned ^0.125 ^-0.15 ^ run function kits:char/abian/vfx/particles/labyrinth
