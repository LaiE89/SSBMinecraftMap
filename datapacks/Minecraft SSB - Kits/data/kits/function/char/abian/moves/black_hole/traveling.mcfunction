## Execute at Black Hole During Void Torrent Phase
# Movement
tp @s ^ ^ ^2

# Collision
execute if entity @e[type=!#kits:non_entity,distance=..2,tag=!Abian,tag=!AbianBlackHoleHit,tag=!InLabyrinth,tag=!Invincible] run function kits:char/abian/moves/black_hole/collision

# VFX
execute positioned ^ ^1.05 ^-0.1 run function kits:char/abian/vfx/particles/torrent
