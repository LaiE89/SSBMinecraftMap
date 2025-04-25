## Raycast check block collision function
execute unless block ~ ~ ~0.5 #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~ ~ ~-0.5 #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~0.5 ~ ~ #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~-0.5 ~ ~ #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~0.5 ~ ~0.5 #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~-0.5 ~ ~0.5 #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~0.5 ~ ~-0.5 #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1
execute unless block ~-0.5 ~ ~-0.5 #kits:passable run scoreboard players set @p[tag=Gojo] kits.raycastTick2 -1