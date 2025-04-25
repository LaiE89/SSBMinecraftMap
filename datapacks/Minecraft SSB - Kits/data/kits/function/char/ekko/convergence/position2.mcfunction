scoreboard players add @s kits.raycastTick4 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick4 2222

execute as @s[scores={kits.raycastTick4=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["EkkoConvergence","EkkoConvergencePosition"]}

execute as @s[scores={kits.raycastTick4=..1111}] positioned ~ ~-0.5 ~ run function kits:char/ekko/convergence/position2
