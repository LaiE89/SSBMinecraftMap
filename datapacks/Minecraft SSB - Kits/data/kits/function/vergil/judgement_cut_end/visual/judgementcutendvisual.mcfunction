summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["judgementcutendvisual","newjudgementcutendvisual"]}
execute store result score @s kits.timer3 run random value -90..90
execute store result entity @e[type=area_effect_cloud,tag=newjudgementcutendvisual,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s kits.timer3
execute store result score @s kits.timer3 run random value -90..90
execute store result entity @e[type=area_effect_cloud,tag=newjudgementcutendvisual,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get @s kits.timer3
tag @e[tag=newjudgementcutendvisual] remove newjudgementcutendvisual
