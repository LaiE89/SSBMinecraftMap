## Execute at Black Hole During Stationary Phase
# Rotation
tp @s ~ ~ ~ ~15 ~

# Collision
execute as @e[type=!#kits:non_entity,distance=..4,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/black_hole/hit

# VFX
execute rotated ~ 0 positioned ~ ~1 ~ run function kits:char/abian/vfx/particles/void
