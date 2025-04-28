## Hasta La Vista Recoil Knockback
# Particles
particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force

# Ray distance
scoreboard players add @s kits.raycastTick2 1

# If ray collides with block, stops the ray and teleports terminator to ray end distance
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^-0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute if score @s kits.raycastTick2 matches 2222 run tp @s ^ ^ ^0.5
execute if score @s kits.raycastTick2 matches 3333 run tp @s ^ ^ ^

# Teleports terminator to ray end distance if ray travelled 6.5 blocks
execute if score @s kits.raycastTick2 matches 13 run tp @s ^ ^ ^

# Ray travels 0.5 blocks repeatedly until it meets conditions
execute if score @s kits.raycastTick2 matches ..12 positioned ^ ^ ^-0.5 run function kits:char/terminator/grenade_launcher/hasta_la_vista/recoil
