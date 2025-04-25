scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run particle sweep_attack ^ ^ ^0.5 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick2=2222}] positioned as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] positioned ~ ~1 ~ run execute as @e[type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/cynthia/lucario/bulletpunchparticles
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick3 0
execute as @s[scores={kits.raycastTick2=2222}] run scoreboard players set @s kits.ability2CD 0

execute as @s[scores={kits.raycastTick2=..8}] positioned ^ ^ ^0.5 run function kits:char/cynthia/lucario/bulletpunchlocation
