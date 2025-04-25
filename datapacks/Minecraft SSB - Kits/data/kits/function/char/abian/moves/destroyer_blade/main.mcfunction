## Execute at Destroyer Blade
# Movement
tp @s ^ ^ ^0.5

# Collision
execute as @e[type=!#kits:non_entity,distance=..2.5,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/destroyer_blade/hit

# VFX
execute positioned ^-0.1 ^1 ^0.1 run function kits:char/abian/vfx/particles/destroyer
