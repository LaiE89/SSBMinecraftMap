scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^-0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["pkrocketplace"]}
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["pkrocketplace"]}
execute if entity @s[scores={kits.raycastTick=51}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["pkrocketplace"]}
execute as @s[scores={kits.raycastTick=..50}] positioned ^ ^ ^0.5 run function kits:char/ness/nesspassive2
