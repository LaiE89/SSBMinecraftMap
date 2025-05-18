## Execute at Shotgun Bullet AEC
# kits.timer for range dependent collision effects
scoreboard players add @s kits.timer 1

# Movement
tp @s ^ ^ ^-1.75

# Particles
particle dust{color:[1.000,1.000,0.000],scale:0.75} ~ ~1 ~ 0.04 0.04 0.04 0 5 force

# Collision
execute if entity @e[distance=..1.75,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/jacket/shotgun/hit
