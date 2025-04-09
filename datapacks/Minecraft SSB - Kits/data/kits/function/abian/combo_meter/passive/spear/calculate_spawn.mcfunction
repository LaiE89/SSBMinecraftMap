## Calculates How High Spear of Longinus Will Spawn
# Ray distance
scoreboard players add @s kits.specific.abiankits.raycastTick 1

# If ray collides with block, stops the ray and summons spear to ray end distance
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.abiankits.raycastTick 2222
execute if score @s kits.specific.abiankits.raycastTick matches 2222.. run summon area_effect_cloud ~ ~-1.5 ~ {Tags:["AbianSpearOfLonginus","AbianSpearOfLonginusFalling"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}

# Summons spear to ray end distance if ray travelled 30 blocks
execute if score @s kits.specific.abiankits.raycastTick matches 60 run summon area_effect_cloud ~ ~ ~ {Tags:["AbianSpearOfLonginus","AbianSpearOfLonginusFalling"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.specific.abiankits.raycastTick matches ..59 positioned ~ ~0.5 ~ run function kits:abian/combo_meter/passive/spear/calculate_spawn
