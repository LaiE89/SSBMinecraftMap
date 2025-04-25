## Execute at SPAS Bullet AEC
# Movement
tp @s ^ ^ ^-1.25

# kits.timer for range dependent collision effects
scoreboard players add @s kits.timer 1

# Collision
execute if entity @e[distance=..1.5,limit=1,sort=nearest,tag=!Terminator,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/terminator/shotgun/shoot/collision

# Particles
# particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0 1
particle minecraft:dust{color:[0.500,0.500,0.500],scale:1} ~ ~1 ~ 0.05 0.05 0.05 0 10 force
particle dust{color:[1.000,0.753,0.000],scale:1} ~ ~1 ~ 0 0 0 0 2 force
