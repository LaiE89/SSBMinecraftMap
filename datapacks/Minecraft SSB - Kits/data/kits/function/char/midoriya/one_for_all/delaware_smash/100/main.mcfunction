## Execute at Shock Wave 100% AEC
# Movement
tp @s ^ ^ ^2

# Collision
execute if entity @e[distance=..2.5,limit=1,sort=nearest,tag=!Midoriya,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/midoriya/one_for_all/delaware_smash/100/hit

# Particles
particle item{item:"white_stained_glass"} 0 0 0.1 10 0 0 0.1 10 force
