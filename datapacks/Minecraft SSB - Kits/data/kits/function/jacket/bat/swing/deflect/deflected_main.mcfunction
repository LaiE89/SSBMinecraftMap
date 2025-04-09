## Execute at Deflected Projectile
# Collision
execute if entity @e[distance=..2,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:jacket/bat/swing/deflect/deflected_hit
