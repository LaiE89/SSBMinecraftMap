## Slowcast Check Block Collision Function
execute unless block ~ ~ ~0.5 #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~ ~ ~-0.5 #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~0.5 ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~-0.5 ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~0.5 ~ ~0.5 #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~-0.5 ~ ~0.5 #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~0.5 ~ ~-0.5 #kits:passable run scoreboard players set @s kits.raycastTick -1
execute unless block ~-0.5 ~ ~-0.5 #kits:passable run scoreboard players set @s kits.raycastTick -1