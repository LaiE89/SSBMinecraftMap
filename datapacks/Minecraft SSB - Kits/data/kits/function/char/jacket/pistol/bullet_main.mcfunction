## Execute at Pistol Bullet AEC
# Movement
tp @s ^ ^ ^1.5

# Collision
execute if entity @e[distance=..1.75,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/jacket/pistol/hit
#execute unless block ~ ~0.5 ~ #kits:passable run kill @s
#execute unless block ^ ^0.5 ^-0.75 air run kill @s

# Particles
particle dust{color:[1.000,1.000,0.000],scale:0.75} ~ ~1 ~ 0.04 0.04 0.04 0 5 force
