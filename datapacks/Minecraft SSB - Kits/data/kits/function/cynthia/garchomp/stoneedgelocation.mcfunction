scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^-0.5 run function kits:cynthia/garchomp/stoneedgesummon
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run summon area_effect_cloud ^ ^ ^-0.5 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["GarchompStoneEdgeLocation"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^-0.5 run particle block{block_state:"minecraft:granite"} ~ ~0.1 ~ 1 0 1 0.5 100 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^-0.5 run playsound minecraft:block.sweet_berry_bush.break neutral @a[distance=..20] ~ ~ ~ 5 0 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run schedule function kits:cynthia/garchomp/stoneedgedelay 10t append
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run scoreboard players set @s kits.ability1CD 0

execute as @s[scores={kits.raycastTick=..29}] positioned ^ ^ ^0.5 run function kits:cynthia/garchomp/stoneedgelocation
