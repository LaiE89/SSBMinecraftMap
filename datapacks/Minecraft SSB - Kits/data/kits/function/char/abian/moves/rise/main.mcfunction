## Execute at Rise Marker
# VFX
execute if score @p[tag=Abian] kits.timer7 matches 4 positioned ~-0.125 ~ ~0.125 run function kits:char/abian/vfx/particles/runes
function kits:char/abian/vfx/particles/circle
tp @s ~ ~ ~ ~3 ~

# Collision
execute as @e[type=!#kits:non_entity,distance=..6,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s unless block ~ ~-0.25 ~ #kits:passable run function kits:char/abian/moves/rise/hit
