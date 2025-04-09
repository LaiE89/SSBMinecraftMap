# Runs the Entire Procedure
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["TrailblazerNewInit"]}
execute as @e[limit=1,sort=nearest,tag=TrailblazerNewInit,type=area_effect_cloud] at @s run function kits:trailblazer/vfx/spawn/random/start
