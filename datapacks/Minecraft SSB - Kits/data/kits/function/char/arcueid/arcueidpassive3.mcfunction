scoreboard players add @s kits.raycastTick2 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5 facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth]
execute as @s[scores={kits.raycastTick2=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth]
execute if entity @s[scores={kits.raycastTick2=8}] run tp @s ^ ^ ^ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth]

execute as @s[scores={kits.raycastTick2=..7}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/arcueid/arcueidpassive3
