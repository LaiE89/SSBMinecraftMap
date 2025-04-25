## Knocks Back Enemies Hit by Destroyer Blade
# Ray distance
scoreboard players add @s kits.specific.abiankits.raycastTick 1

# If ray collides with block, stops the ray and teleports enemy to ray end distance
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.abiankits.raycastTick 2222
execute if score @s kits.specific.abiankits.raycastTick matches 2222.. run tp @s ^ ^0.1 ^-1

# Teleports enemy to ray end distance if ray travelled 1.5 blocks
execute if score @s kits.specific.abiankits.raycastTick matches 3 run tp @s ^ ^ ^

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.specific.abiankits.raycastTick matches ..2 positioned ^ ^ ^0.5 run function kits:char/abian/moves/destroyer_blade/kb
