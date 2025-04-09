## Calculates How Far Dash Will Travel
# Ray travels 0.5 blocks repeatedly until it meets conditions
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and summons dash end marker to ray end distance
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if entity @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["MidoriyaDashEndMarker"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}
execute if entity @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["MidoriyaDashEndMarker"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}

# Summons dash end marker to ray end distance if ray travelled 6 blocks
execute if entity @s[scores={kits.raycastTick=12}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["MidoriyaDashEndMarker"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}

# Raycast loops until ray travelled 6 blocks
execute if entity @s[scores={kits.raycastTick=..11}] positioned ^ ^ ^0.5 run function kits:midoriya/one_for_all/dash/calculate_range
