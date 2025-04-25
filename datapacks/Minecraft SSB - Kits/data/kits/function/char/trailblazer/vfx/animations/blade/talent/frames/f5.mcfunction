# Blade's Talent Frame 5
data merge entity @s {Pose:{Head:[10f,0f,0f],LeftArm:[50f,10f,270f],RightArm:[10f,0f,15f],LeftLeg:[0f,0f,350f],RightLeg:[0f,0f,10f]}}
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 1 1
playsound entity.wither.shoot neutral @a[distance=..20] ~ ~ ~ 1 0.75 1
tag @p[tag=Trailblazer] remove TrailblazerBladeAnimation
tag @s add TrailblazerEndAnimation
