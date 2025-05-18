scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute if entity @s[scores={kits.raycastTick2=2222..}] run summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:80,Tags:["GutsDragonslayerSmashDestination"]}
execute as @s[scores={kits.raycastTick2=..1111}] positioned ~ ~-0.5 ~ run function kits:char/guts/smash/raycastdown
