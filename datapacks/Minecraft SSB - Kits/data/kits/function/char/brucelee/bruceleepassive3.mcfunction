scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^-1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["BruceleeKick"]}
execute as @s[scores={kits.raycastTick2=41}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["BruceleeKick"]}
execute as @s[scores={kits.raycastTick2=..40}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/brucelee/bruceleepassive3
