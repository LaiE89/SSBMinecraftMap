scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=19..}] kits.raycastTick 2222
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=..18}] kits.raycastTick 100
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^-0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["kratoshookplace"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run function kits:kratos/throwonhit

execute as @s[scores={kits.raycastTick=50}] positioned ~ ~ ~ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=50}] positioned ~ ~ ~ run function kits:kratos/throwlocationdown

execute as @s[scores={kits.raycastTick=..49}] positioned ^ ^ ^0.5 run function kits:kratos/throwlocation
