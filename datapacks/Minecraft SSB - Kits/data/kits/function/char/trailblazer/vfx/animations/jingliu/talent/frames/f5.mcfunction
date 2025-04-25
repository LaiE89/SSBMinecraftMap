# Jingliu's Talent Frame 5
data merge entity @s {Pose:{Head:[0f,10f,0f],LeftArm:[45f,0f,30f],RightArm:[95f,225f,150f],LeftLeg:[350f,0f,5f],RightLeg:[10f,0f,355f]}}
execute as @e[distance=..15,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:char/trailblazer/talent/jingliu/impair
execute rotated ~5 0 positioned ^0.1875 ^4.8125 ^-2 run function kits:char/trailblazer/vfx/particles/jingliu/talent
tp @s ~ ~ ~ ~-5 ~
