# Summons Slices at Calculated Distance
scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if score @s kits.raycastTick matches 2222.. run summon area_effect_cloud ^ ^ ^-1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["ItadoriSlices","ItadoriCleaveLocation"]}
execute if score @s kits.raycastTick matches 10 run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["ItadoriSlices","ItadoriCleaveLocation"]}
execute if score @s kits.raycastTick matches ..9 positioned ^ ^ ^0.5 run function kits:itadori/sukuna/slice/calculate_range
