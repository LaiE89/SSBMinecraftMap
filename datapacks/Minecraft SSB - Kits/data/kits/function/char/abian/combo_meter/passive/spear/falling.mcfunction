## Execute at Spear of Longinus When Falling
# Gravity
tp @s ~ ~-1.5 ~ ~20 ~

# Collision
execute as @e[type=!#kits:non_entity,distance=..4,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/combo_meter/passive/spear/hit

# Stops falling upon reaching the ground
execute unless block ~ ~-4 ~ #kits:passable run function kits:char/abian/combo_meter/passive/spear/reached_ground
