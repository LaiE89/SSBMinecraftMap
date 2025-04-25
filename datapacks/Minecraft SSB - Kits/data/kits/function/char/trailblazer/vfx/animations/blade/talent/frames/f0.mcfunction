# Blade's Talent Frame 0
data merge entity @s {Pose:{Head:[50f,0f,20f],LeftArm:[10f,180f,340f],RightArm:[290f,0f,50f],LeftLeg:[0f,0f,360f],RightLeg:[0f,0f,0f]}}
execute rotated ~ 0 run function kits:char/trailblazer/vfx/particles/blade/mara
playsound block.respawn_anchor.charge neutral @a[distance=..20] ~ ~ ~ 1 0.75 1
tp @s ~ ~ ~ ~45 ~
