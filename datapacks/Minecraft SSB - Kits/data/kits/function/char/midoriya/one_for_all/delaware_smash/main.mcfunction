## Execute at Shock Wave AEC
# Movement
tp @s ^ ^ ^1.25

# Collision
execute if entity @e[distance=..2,limit=1,sort=nearest,tag=!Midoriya,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/midoriya/one_for_all/delaware_smash/hit

# Particles
particle item{item:"white_stained_glass"} ~ ~1 ~ 0 0 0 0.1 10 force
