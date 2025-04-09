# Jingliu's Skill Frame 16
data merge entity @s {Pose:{Head:[20f,0f,0f],LeftArm:[300f,0f,20f],RightArm:[220f,0f,270f],LeftLeg:[15f,0f,15f],RightLeg:[355f,0f,0f]}}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TrailblazerJingliuSkillSlash","projectile"]}
tp @e[limit=1,sort=nearest,tag=TrailblazerJingliuSkillSlash,type=area_effect_cloud] ^ ^ ^1 ~10 ~
tp @s ~ ~ ~ ~-80 ~
