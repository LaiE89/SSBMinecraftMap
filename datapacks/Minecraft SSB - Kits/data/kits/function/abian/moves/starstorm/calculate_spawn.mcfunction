## Calculates How High Starstorm Will Spawn
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and summons starstorm to ray end distance
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if score @s kits.raycastTick matches 2222.. run summon area_effect_cloud ~ ~-1.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["AbianStarstorm","projectile"]}

# Summons starstorm to ray end distance if ray travelled 30 blocks
execute if score @s kits.raycastTick matches 60 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["AbianStarstorm","projectile"]}

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..59 positioned ~ ~0.5 ~ run function kits:abian/moves/starstorm/calculate_spawn
