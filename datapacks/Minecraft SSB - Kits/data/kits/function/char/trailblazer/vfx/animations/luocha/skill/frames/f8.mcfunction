# Luocha's Skill Frame 8
data merge entity @s {Pose:{Head:[0f,30f,0f],LeftArm:[0f,0f,350f],RightArm:[270f,30f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute as @p[tag=Trailblazer] at @s run function kits:char/trailblazer/skill/luocha/heal
execute rotated ~30 0 run particle composter ^-0.25 ^1.15 ^0.85 0 0 0 0 3 force
tag @p[tag=Trailblazer] remove TrailblazerLuochaAnimation
tag @s add TrailblazerEndAnimation
