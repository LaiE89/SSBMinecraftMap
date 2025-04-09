# Jingliu's Skill Frame 11
data merge entity @s {Pose:{Head:[20f,0f,0f],LeftArm:[340f,0f,340f],RightArm:[140f,180f,270f],LeftLeg:[15f,0f,15f],RightLeg:[355f,0f,0f]}}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TrailblazerJingliuSkillSlash","projectile"]}
tp @e[limit=1,sort=nearest,tag=TrailblazerJingliuSkillSlash,type=area_effect_cloud] ^ ^ ^1 ~80 ~
tp @s ~ ~ ~ ~70 ~
