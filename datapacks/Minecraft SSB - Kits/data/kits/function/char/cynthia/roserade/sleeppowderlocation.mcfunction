scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run function kits:char/cynthia/roserade/sleeppowdereffects
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run execute at @s run playsound minecraft:entity.witch.throw neutral @a[distance=..30] ~ ~ ~ 5 1 1
execute as @s[scores={kits.raycastTick2=2222}] run scoreboard players set @s kits.ability4CD 0

execute as @s[scores={kits.raycastTick2=..14}] positioned ^ ^ ^0.5 run function kits:char/cynthia/roserade/sleeppowderlocation
