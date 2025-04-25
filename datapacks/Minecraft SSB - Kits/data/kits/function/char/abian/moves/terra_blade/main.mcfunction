## Execute at Terra Blade
# kits.timer for a sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches ..24 run function kits:char/abian/moves/terra_blade/spiraling
execute if score @s kits.timer matches 30.. run function kits:char/abian/moves/terra_blade/dispersing

# Collision
execute positioned ~ ~-1 ~ as @e[type=!#kits:non_entity,distance=..2,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/terra_blade/hit

# VFX
function kits:char/abian/vfx/particles/terra
