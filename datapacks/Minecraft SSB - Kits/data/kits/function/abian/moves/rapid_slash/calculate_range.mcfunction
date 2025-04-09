## Calculates How Far Rapid Slash Will Travel
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and summons RS end marker to ray end distance
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if score @s kits.raycastTick matches 2222 run summon area_effect_cloud ^ ^ ^-0.5 {Tags:["AbianRslashEndMarker"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}
execute if score @s kits.raycastTick matches 3333 run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["AbianRslashEndMarker"]}

# Summons RS end marker to ray end distance if ray travelled 17 blocks
execute if score @s kits.raycastTick matches 34 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["AbianRslashEndMarker"]}

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..33 positioned ^ ^ ^0.5 run function kits:abian/moves/rapid_slash/calculate_range
