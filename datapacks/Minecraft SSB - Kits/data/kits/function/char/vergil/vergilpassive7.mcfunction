scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222..}] run summon area_effect_cloud ^ ^ ^-1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["summonedswordsdestination"]}
execute as @s[scores={kits.raycastTick3=40}] run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["summonedswordsdestination"]}

execute as @s[scores={kits.raycastTick3=..39}] positioned ^ ^ ^0.5 run function kits:char/vergil/vergilpassive7
