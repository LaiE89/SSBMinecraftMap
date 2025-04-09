# Blade's Skill Frame 8
data merge entity @s {Pose:{Head:[0f,340f,0f],LeftArm:[210f,180f,80f],RightArm:[0f,0f,40f],LeftLeg:[0f,0f,350f],RightLeg:[0f,0f,10f]}}
playsound entity.ender_dragon.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0 1
tag @p[tag=Trailblazer] remove TrailblazerBladeAnimation
tag @s add TrailblazerEndAnimation
