scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["SekiroChasingSliceDestination"]}
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["SekiroChasingSliceDestination"]}
execute as @s[scores={kits.raycastTick=30}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["SekiroChasingSliceDestination"]}

execute as @s[scores={kits.raycastTick=..29}] positioned ^ ^ ^0.5 rotated ~ 0 run function kits:char/sekiro/chasingslice/raycast
