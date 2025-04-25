## Detects if User Has Ground Below
# Ray distance
scoreboard players add @s kits.specific.abiankits.raycastTick 1

# If ray collides with block, stops the ray and teleport to ray end distance
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.abiankits.raycastTick 2222
execute if score @s kits.specific.abiankits.raycastTick matches 2222.. run function kits:char/abian/teleportation/fast_fall/found

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.specific.abiankits.raycastTick matches ..29 positioned ~ ~-0.5 ~ run function kits:char/abian/teleportation/fast_fall/detect
