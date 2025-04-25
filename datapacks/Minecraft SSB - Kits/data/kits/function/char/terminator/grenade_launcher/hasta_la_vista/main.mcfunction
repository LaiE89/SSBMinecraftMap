## Execute at HLV Grenade AEC
# Movement
tp @s ^ ^ ^2

# Collision
execute if entity @e[distance=..2,limit=1,sort=nearest,tag=!Terminator,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/terminator/grenade_launcher/hasta_la_vista/collision

# Duration until grenade explodes automatically
execute if data entity @s {Age:5} run function kits:char/terminator/grenade_launcher/hasta_la_vista/collision

# Particles
particle campfire_cosy_smoke ^ ^ ^ 0 0 0 0 1 force
particle campfire_cosy_smoke ^ ^ ^-1 0 0 0 0 1 force
particle dust{color:[1.000,0.753,0.000],scale:0.75} ^ ^ ^ 0.2 0.2 0.2 0 20 force
particle dust{color:[1.000,0.753,0.000],scale:0.75} ^ ^ ^-1 0.2 0.2 0.2 0 20 force
