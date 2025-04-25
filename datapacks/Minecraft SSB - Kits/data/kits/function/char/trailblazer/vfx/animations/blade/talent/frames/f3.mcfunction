# Blade's Talent Frame 3
data merge entity @s {Pose:{Head:[50f,0f,0f],LeftArm:[10f,0f,270f],RightArm:[0f,0f,35f],LeftLeg:[0f,0f,358f],RightLeg:[0f,0f,2f]}}
execute as @e[distance=..15,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:char/trailblazer/talent/blade/hit
execute rotated ~-35 ~ positioned ^0.09375 ^1.5 ^3 run function kits:char/trailblazer/vfx/particles/blade/talent
tp @s ~ ~ ~ ~-60 ~
