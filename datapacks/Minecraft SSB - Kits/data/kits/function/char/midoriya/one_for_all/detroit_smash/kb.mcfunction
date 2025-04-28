## Knocks Back Enemies Hit by Detroit Smash
# Ray travels 0.5 blocks repeatedly until it meets conditions
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and teleports enemy to ray end distance
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if entity @s[scores={kits.raycastTick=2222}] run tp @e[tag=MidoriyaDetroitSmashKB] ^ ^ ^-0.5
execute if entity @s[scores={kits.raycastTick=3333}] run tp @e[tag=MidoriyaDetroitSmashKB] ^ ^ ^

# Teleports enemy to ray end distance if ray travelled 4 blocks
execute if entity @s[scores={kits.raycastTick=15}] run tp @e[tag=MidoriyaDetroitSmashKB] ^ ^ ^

# Raycast loops until ray travelled 4 blocks
execute if entity @s[scores={kits.raycastTick=..14}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/midoriya/one_for_all/detroit_smash/kb
