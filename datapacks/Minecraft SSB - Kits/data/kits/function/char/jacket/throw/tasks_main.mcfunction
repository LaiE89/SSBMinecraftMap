## Execute at Item Throw Tasks AEC
# Movement
tp @s ^ ^ ^1.5

# Execute at throw visual armor stand
execute as @e[limit=1,sort=nearest,tag=JacketThrowVisual,type=armor_stand] at @s run function kits:char/jacket/throw/visual_main

# Collision
execute if entity @e[distance=..1.5,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/jacket/throw/hit

# Despawn
execute if data entity @s {Age:19} run function kits:char/jacket/throw/hit
