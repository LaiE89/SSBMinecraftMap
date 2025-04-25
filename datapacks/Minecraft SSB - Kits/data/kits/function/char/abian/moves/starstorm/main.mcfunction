## Execute at Starstorm
# Gravity
tp @s ~ ~-1 ~

# Collision
execute if entity @e[type=!#kits:non_entity,distance=..3,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] run function kits:char/abian/moves/starstorm/collision
execute unless block ~ ~-1 ~ #kits:passable run function kits:char/abian/moves/starstorm/collision

# Particles
particle dust{color:[0.000,1.000,1.000],scale:0.5} ~ ~1 ~ 0.2 0.2 0.2 0 30 force
particle firework ~ ~1 ~ 0 0 0 0.1 1 force
