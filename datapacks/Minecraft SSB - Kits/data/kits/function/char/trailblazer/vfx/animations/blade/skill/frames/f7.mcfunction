# Blade's Skill Frame 7
data merge entity @s {Pose:{Head:[0f,340f,0f],LeftArm:[170f,180f,85f],RightArm:[0f,0f,40f],LeftLeg:[0f,0f,350f],RightLeg:[0f,0f,10f]}}
execute as @e[distance=..5,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:char/trailblazer/skill/blade/hit
execute rotated ~-25 ~ positioned ^-0.125 ^1 ^-0.75 run function kits:char/trailblazer/vfx/particles/blade/skill2
