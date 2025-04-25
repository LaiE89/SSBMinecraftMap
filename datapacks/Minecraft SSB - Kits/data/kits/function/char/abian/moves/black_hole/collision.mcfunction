## Void Torrent Upon Collision
# Hits nearby enemies
execute as @e[type=!#kits:non_entity,distance=..2,limit=1,sort=nearest,tag=!Abian,tag=!AbianBlackHoleHit,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/black_hole/hit

# Bounce
tp @s ~ ~ ~ facing entity @e[type=!#kits:non_entity,distance=..15,limit=1,sort=nearest,tag=!Abian,tag=!AbianBlackHoleHit,tag=!InLabyrinth,tag=!Invincible]
data modify entity @s Age set value 0
scoreboard players reset @s kits.timer
