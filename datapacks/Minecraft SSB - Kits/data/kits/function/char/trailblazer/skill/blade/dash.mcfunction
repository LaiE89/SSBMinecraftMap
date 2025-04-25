## Blade Dashes
# Finds dash vector
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["TrailblazerBladeSkillVector"]}
execute as @e[limit=1,sort=nearest,tag=TrailblazerBladeSkillVector,type=area_effect_cloud] at @s run function kits:char/trailblazer/skill/blade/vector

# Stores result into motion
execute store result entity @s Motion[0] double 0.003 run scoreboard players get @e[limit=1,sort=nearest,tag=TrailblazerBladeSkillVector,type=area_effect_cloud] kits.dx
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @e[limit=1,sort=nearest,tag=TrailblazerBladeSkillVector,type=area_effect_cloud] kits.dz
