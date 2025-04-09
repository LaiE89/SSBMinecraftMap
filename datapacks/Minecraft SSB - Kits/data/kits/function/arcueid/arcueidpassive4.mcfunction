scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run function kits:arcueid/chained
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.ability4CD 0

execute as @s[scores={kits.raycastTick=..20}] positioned ^ ^ ^0.5 run function kits:arcueid/arcueidpassive4	
