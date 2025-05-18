## Launches Item in Random Trajectories
# Gets random numbers for x, y, z
execute store result score @s kits.x run random value 0..10
execute store result score @s kits.y run random value 0..10
execute store result score @s kits.z run random value 0..10

# If randomly generated number is 10 or over, item motion becomes negative
tag @s[scores={kits.x=10..}] add AlucardSoulMotionNegX
tag @s[scores={kits.z=10..}] add AlucardSoulMotionNegZ

# kits.y motion is always positive and below 10
scoreboard players remove @s[scores={kits.y=10..}] kits.y 10
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s kits.y

# Positive x, kits.z motion
execute store result entity @s[tag=!AlucardSoulMotionNegX] Motion[0] double 0.1 run scoreboard players get @s kits.x
execute store result entity @s[tag=!AlucardSoulMotionNegZ] Motion[2] double 0.1 run scoreboard players get @s kits.z

# Negative x, kits.z motion
scoreboard players remove @s kits.x 10
scoreboard players remove @s kits.z 10
execute store result entity @s[tag=AlucardSoulMotionNegX] Motion[0] double -0.1 run scoreboard players get @s kits.x
execute store result entity @s[tag=AlucardSoulMotionNegZ] Motion[2] double -0.1 run scoreboard players get @s kits.z

# Resets motion
tag @s remove AlucardSoulMotionNegX
tag @s remove AlucardSoulMotionNegZ
tag @s remove AlucardSoulMotion
