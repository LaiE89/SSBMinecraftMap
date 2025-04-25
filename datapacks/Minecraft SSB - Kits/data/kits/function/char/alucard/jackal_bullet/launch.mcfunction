summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["AlucardJackalBullet","projectile"]}
tp @e[type=area_effect_cloud,tag=AlucardJackalBullet,limit=1,sort=nearest] ~ ~1 ~ ~ ~
# Distance
execute as @e[type=area_effect_cloud,tag=AlucardJackalBullet,limit=1,sort=nearest] at @s run scoreboard players set @s kits.raycastTick 0
# Step
execute as @e[type=area_effect_cloud,tag=AlucardJackalBullet,limit=1,sort=nearest] at @s run scoreboard players set @s kits.raycastTick2 1000
execute as @e[type=area_effect_cloud,tag=AlucardJackalBullet,limit=1,sort=nearest] at @s run function kits:char/alucard/jackal_bullet/wall/find