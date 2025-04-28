## Knocks Back Enemies Hit by Explosion
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.05 1 force
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and teleports enemy to ray end distance
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^-0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if score @s kits.raycastTick matches 2222 run tp @s ^ ^ ^0.5
execute if score @s kits.raycastTick matches 3333 run tp @s ^ ^ ^
execute if score @s kits.raycastTick matches 10 run tp @s ^ ^ ^

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..9 positioned ^ ^ ^-0.5 run function kits:char/doomslayer/ballista/kb
