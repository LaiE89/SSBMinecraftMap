## Execute at User While Dashing
# Ray distance
scoreboard players add @s kits.raycastTick 1

# If ray collides with block, stops the ray and teleports user to ray end distance
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if score @s kits.raycastTick matches 2222 run tp @s ^ ^ ^-0.5
execute if score @s kits.raycastTick matches 3333 run tp @s ^ ^ ^

# If ray collides with enemy, inflicts delayed damage
execute as @e[type=!#kits:non_entity,distance=..2.5,tag=!Abian,tag=!AbianLabyrinthShopHit,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/moves/labyrinth_shop/hit

# Teleports user to ray end distance if ray travelled 15 blocks
execute if score @s kits.raycastTick matches 30 run tp @s ^ ^ ^

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick matches ..29 positioned ^ ^ ^0.5 run function kits:char/abian/moves/labyrinth_shop/dashing
