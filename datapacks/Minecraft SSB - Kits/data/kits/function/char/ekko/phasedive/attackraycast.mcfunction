scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/ekko/phasedive/attackdamage
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick3 0
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run function kits:char/ekko/phasedive/attackraycastdown
execute as @s[scores={kits.raycastTick2=..30}] positioned ^ ^ ^0.5 run function kits:char/ekko/phasedive/attackraycast
