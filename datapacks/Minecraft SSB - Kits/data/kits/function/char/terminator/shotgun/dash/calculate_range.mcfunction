## Calculates How Far Dash Will Travel
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and summons dash end marker to ray end distance
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if score @s kits.raycastTick matches 2222 run summon area_effect_cloud ^ ^ ^-0.5 {Tags:["TerminatorDashEndMarker"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10}
execute if score @s kits.raycastTick matches 3333 run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TerminatorDashEndMarker"]}

# Summons dash end marker to ray end distance if ray travelled 6.5 blocks
execute if score @s kits.raycastTick matches 13 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["TerminatorDashEndMarker"]}

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..12 positioned ^ ^ ^0.5 run function kits:char/terminator/shotgun/dash/calculate_range
