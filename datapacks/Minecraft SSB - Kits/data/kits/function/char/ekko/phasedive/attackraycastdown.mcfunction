scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222..}] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute as @s[scores={kits.raycastTick3=7}] run tp @s @e[type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,limit=1,sort=nearest]
execute as @s[scores={kits.raycastTick3=..6}] positioned ~ ~-0.5 ~ run function kits:char/ekko/phasedive/attackraycastdown
