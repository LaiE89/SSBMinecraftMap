## Detects if User is Facing an Enemy
# Ray distance
scoreboard players add @s kits.specific.abiankits.raycastTick 1

# If ray collides with block, stops the ray. if ray collides with enemy, stops the ray and teleport to enemy
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.abiankits.raycastTick 2222
execute if entity @e[type=!#kits:non_entity,distance=..2,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] run function kits:char/abian/teleportation/wave_dash/found

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.specific.abiankits.raycastTick matches ..29 positioned ^ ^ ^0.5 run function kits:char/abian/teleportation/wave_dash/detect
