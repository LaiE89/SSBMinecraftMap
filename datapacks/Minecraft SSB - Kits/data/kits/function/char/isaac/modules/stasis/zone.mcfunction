## Execute at Stasis Zone AEC
# Rotation
tp @s ~ ~ ~ ~5 ~

# Slows nearby enemies
execute as @e[distance=..4,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/isaac/modules/stasis/slow

# Particles
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^ ^0.25 ^4 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^-4 ^0.25 ^ 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^ ^0.25 ^-4 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^4 ^0.25 ^ 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^-2.828 ^0.25 ^2.828 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^-2.828 ^0.25 ^-2.828 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^2.828 ^0.25 ^2.828 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:0.75} ^2.828 ^0.25 ^-2.828 0 0 0 0 1 force
