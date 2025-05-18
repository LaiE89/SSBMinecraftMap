## Execute at Stasis Projectile AEC
# Movement
tp @s ^ ^ ^1

# Collision
execute if entity @e[distance=..2,limit=1,sort=nearest,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/isaac/modules/stasis/collision
execute unless block ~ ~-0.5 ~ #kits:passable run function kits:char/isaac/modules/stasis/collision

# Particles
particle dust{color:[0.502,1.000,1.000],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0 20 force
