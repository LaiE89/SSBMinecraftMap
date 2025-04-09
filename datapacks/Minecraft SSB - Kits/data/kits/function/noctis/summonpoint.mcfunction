scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:300,Tags:["NoctisPoint"]}
execute as @s[scores={kits.raycastTick=..1111}] positioned ^ ^ ^0.5 run function kits:noctis/summonpoint
