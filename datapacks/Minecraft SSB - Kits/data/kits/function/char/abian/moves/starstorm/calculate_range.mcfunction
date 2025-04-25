## Calculates How Far Starstorm Will Spawn
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and summons starstorm at a calculated height
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if score @s kits.raycastTick matches 2222.. run execute positioned ^ ^1 ^-1 run function kits:char/abian/moves/starstorm/summon

# Summons starstorm at a calculated height to ray end distance if ray travelled 10 blocks
execute if score @s kits.raycastTick matches 20 run function kits:char/abian/moves/starstorm/summon

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..19 positioned ^ ^ ^0.5 run function kits:char/abian/moves/starstorm/calculate_range
