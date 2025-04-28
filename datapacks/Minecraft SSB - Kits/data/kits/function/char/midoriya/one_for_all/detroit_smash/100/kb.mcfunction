## Knocks Back Enemies Hit by Detroit Smash 100%
# Ray travels 0.5 blocks repeatedly until it meets conditions
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and teleports enemy to ray end distance
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if entity @s[scores={kits.raycastTick=2222}] run tp @e[tag=Midoriya100DetroitSmashKB] ^ ^ ^-0.5
execute if entity @s[scores={kits.raycastTick=3333}] run tp @e[tag=Midoriya100DetroitSmashKB] ^ ^ ^

# Teleports enemy to ray end distance if ray travelled 20 blocks
execute if entity @s[scores={kits.raycastTick=40}] run tp @e[tag=Midoriya100DetroitSmashKB] ^ ^ ^

# Raycast loops until ray travelled 20 blocks
execute if entity @s[scores={kits.raycastTick=..39}] positioned ^ ^ ^0.5 run function kits:char/midoriya/one_for_all/detroit_smash/100/kb
