## When Line Charge Grenade is Traveling in Launching Trajectory
# Collision
execute positioned ^ ^0.5 ^-2.25 as @e[distance=..2.25,limit=1,sort=nearest,tag=!Terminator,tag=!TerminatorLineChargeGrenadeHit,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/terminator/grenade_launcher/line_charge/hit

# Particles
particle campfire_cosy_smoke ^ ^0.5 ^ 0 0 0 0 1 force
particle campfire_cosy_smoke ^ ^0.5 ^-1 0 0 0 0 1 force
particle dust{color:[1.000,0.753,0.000],scale:1} ^ ^0.5 ^ 0 0 0 0 2 force
particle dust{color:[1.000,0.753,0.000],scale:1} ^ ^0.5 ^-1 0 0 0 0 2 force
