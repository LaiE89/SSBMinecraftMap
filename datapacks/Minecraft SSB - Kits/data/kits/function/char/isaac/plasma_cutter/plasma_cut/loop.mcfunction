## Plasma Bolt Raycast
# Ray distance
scoreboard players add @s kits.raycastTick 1

# Collision
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,limit=1,sort=nearest,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function kits:char/isaac/plasma_cutter/plasma_cut/collision
execute as @e[distance=..2,tag=IsaacObjectExplosive,type=armor_stand] at @s run function kits:char/isaac/plasma_cutter/explosive_canister/collision

# Particles
particle dust{color:[0.000,1.000,1.000],scale:0.5} ^ ^-0.1 ^ 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.5} ^0.2 ^-0.1 ^ 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.5} ^-0.2 ^-0.1 ^ 0 0 0 0 1 force

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..20 if block ~ ~ ~ #kits:passable positioned ^ ^ ^0.5 run function kits:char/isaac/plasma_cutter/plasma_cut/loop
