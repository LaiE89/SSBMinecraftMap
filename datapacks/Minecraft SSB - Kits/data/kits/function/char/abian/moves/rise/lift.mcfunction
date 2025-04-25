## Teleport Upwards
# Particles
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.15 0.15 0.15 0 2 force

# Ray distance
scoreboard players add @s kits.specific.abiankits.raycastTick 1

# If ray collides with block, stops the ray and teleport to ray end distance
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.abiankits.raycastTick 2222
execute if score @s kits.specific.abiankits.raycastTick matches 2222.. run tp @s ~ ~-1.5 ~

# Teleports to ray end distance if ray travelled 10 blocks
execute if score @s kits.specific.abiankits.raycastTick matches 20 run tp @s ~ ~ ~

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.specific.abiankits.raycastTick matches ..19 positioned ~ ~0.5 ~ run function kits:char/abian/moves/rise/lift
