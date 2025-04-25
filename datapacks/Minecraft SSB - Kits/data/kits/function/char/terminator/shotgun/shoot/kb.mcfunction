## Knocks Back Enemies Hit by SPAS Bullet AEC
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and teleports enemy to ray end distance
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if score @s kits.raycastTick matches 2222.. run tp @e[limit=1,sort=nearest,tag=TerminatorSpasKB] ^ ^ ^1

# Teleports enemy to ray end distance if ray travelled 5 blocks
execute if score @s kits.raycastTick matches 10 run tp @e[limit=1,sort=nearest,tag=TerminatorSpasKB] ^ ^ ^

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..9 positioned ^ ^ ^-0.5 run function kits:char/terminator/shotgun/shoot/kb
