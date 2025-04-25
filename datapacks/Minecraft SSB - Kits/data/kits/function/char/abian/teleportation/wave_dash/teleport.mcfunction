## Teleports User to Targeted Enemy
# Ray distance
scoreboard players add @s kits.raycastTick2 1

# If ray collides with block, stops the ray and teleports to ray end distance. if ray collides with enemy, teleports 2.5 blocks away from enemy
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute if score @s kits.raycastTick2 matches 5 run tp @s ~ ~ ~
execute if score @s kits.raycastTick2 matches 2222.. run tp @s ^ ^0.25 ^1 facing entity @e[type=!#kits:non_entity,limit=1,sort=nearest,tag=!Abian,tag=!InLabyrinth,tag=!Invincible]

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick2 matches ..4 positioned ^ ^ ^-0.5 run function kits:char/abian/teleportation/wave_dash/teleport
