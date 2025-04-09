## Launches Item in Random Trajectories
# Gets random numbers for x, y, z
execute store result score @s kits.x run random value 0..20
execute store result score @s kits.z run random value 0..20

# If randomly generated number is 10 or over, item motion becomes negative
tag @s[scores={kits.x=10..}] add EdwardObjectMotionNegX
tag @s[scores={kits.z=10..}] add EdwardObjectMotionNegZ

# kits.y motion is a constant
scoreboard players set @s kits.y 5
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s kits.y

# Positive x, kits.z motion
execute store result entity @s[tag=!EdwardObjectMotionNegX] Motion[0] double 0.1 run scoreboard players get @s kits.x
execute store result entity @s[tag=!EdwardObjectMotionNegZ] Motion[2] double 0.1 run scoreboard players get @s kits.z

# Negative x, kits.z motion
scoreboard players remove @s kits.x 10
scoreboard players remove @s kits.z 10
execute store result entity @s[tag=EdwardObjectMotionNegX] Motion[0] double -0.1 run scoreboard players get @s kits.x
execute store result entity @s[tag=EdwardObjectMotionNegZ] Motion[2] double -0.1 run scoreboard players get @s kits.z

# Resets motion
tag @s remove EdwardObjectMotionNegX
tag @s remove EdwardObjectMotionNegZ
tag @s remove EdwardObjectMotion
