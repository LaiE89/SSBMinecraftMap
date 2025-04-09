scoreboard players add @s kits.raycastTick 1
execute if entity @s[scores={kits.raycastTick=15}] positioned ^ ^ ^ run summon area_effect_cloud ^ ^-1.5 ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["kratosslashplace"]}
execute as @s[scores={kits.raycastTick=..14}] positioned ^ ^ ^0.5 run function kits:kratos/slashlocation
