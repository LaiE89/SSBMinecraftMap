scoreboard players add @s kits.raycastTick 1
# particle block_marker{block_state:"minecraft:barrier"} ~ ~ ~ 0 0 0 0 1 force
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^-0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["noctisthrowplace"]}
execute as @s[scores={kits.raycastTick=2222}] positioned ~ ~ ~ run function kits:char/noctis/throwonhit

execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["noctisthrowplace"]}
execute as @s[scores={kits.raycastTick=3333}] positioned ~ ~ ~ run function kits:char/noctis/throwonhit

execute as @s[scores={kits.raycastTick=40}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["noctisthrowplace"]}
execute as @s[scores={kits.raycastTick=40}] positioned ~ ~ ~ run function kits:char/noctis/throwonhit

execute as @s[scores={kits.raycastTick=..39}] positioned ^ ^ ^0.5 run function kits:char/noctis/throwlocation
