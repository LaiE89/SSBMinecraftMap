# Blade's Skill Frame 2
data merge entity @s {Pose:{Head:[0f,0f,0f],LeftArm:[80f,180f,340f],RightArm:[0f,0f,0f],LeftLeg:[0f,350f,0f],RightLeg:[0f,350f,0f]}}
execute as @e[distance=..5,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:char/trailblazer/skill/blade/hit
execute rotated ~-25 ~ positioned ^ ^1.5 ^-0.875 run function kits:char/trailblazer/vfx/particles/blade/skill1
