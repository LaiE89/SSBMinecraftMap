# Luocha's Talent Frame 5
data merge entity @s {Pose:{Head:[0f,0f,0f],LeftArm:[70f,175f,354f],RightArm:[0f,0f,10f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["TrailblazerLuochaTalentField"]}
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.generic.big_fall neutral @a[distance=..20] ~ ~ ~ 1 0.75 1
tag @p[tag=Trailblazer] remove TrailblazerLuochaAnimation
tag @s add TrailblazerEndAnimation
