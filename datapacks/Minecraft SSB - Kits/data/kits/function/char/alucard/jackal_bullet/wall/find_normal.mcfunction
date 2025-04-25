## When the Raycast Detects an Approaching Wall
# reset
scoreboard players reset @s kits.z
scoreboard players reset @s kits.dz

# determines bounce using the wall's normal
execute unless block ~0.5 ~ ~ #kits:passable run scoreboard players set @s kits.z 1
execute unless block ~-0.5 ~ ~ #kits:passable run scoreboard players set @s kits.z 1
execute unless block ~ ~0.5 ~ #kits:passable run scoreboard players set @s kits.dz 1
execute unless block ~ ~-0.5 ~ #kits:passable run scoreboard players set @s kits.dz 1
execute unless block ~ ~ ~0.5 #kits:passable run scoreboard players set @s kits.z 2
execute unless block ~ ~ ~-0.5 #kits:passable run scoreboard players set @s kits.z 2