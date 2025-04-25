## Finds random spawn position
# finding conditions
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick -1
execute if score @s kits.raycastTick matches ..0 run function kits:char/gojo/utilities/random_pos/found with storage kits:kits gojo.randomPos

# recursive call
scoreboard players remove @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 0.. positioned ^ ^ ^0.5 run function kits:char/gojo/utilities/random_pos/find