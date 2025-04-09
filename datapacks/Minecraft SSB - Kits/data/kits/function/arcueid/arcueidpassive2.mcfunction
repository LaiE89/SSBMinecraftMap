scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute at @s[scores={kits.raycastTick=2222}] run particle explosion ~ ~-1 ~ 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run particle sweep_attack ^ ^ ^0.5 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run playsound minecraft:entity.iron_golem.damage neutral @a[distance=..20] ~ ~ ~ 3 0 1
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run effect give @s instant_health
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=2222}] positioned as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] positioned ~ ~1 ~ run function kits:arcueid/ripapartdamage
#execute as @s[scores={kits.raycastTick=2222}] positioned as @s rotated ~ 0 run function kits:arcueid/arcueidpassive3
execute as @s[scores={kits.raycastTick=2222}] run scoreboard players set @s kits.ability1CD 0

execute as @s[scores={kits.raycastTick=..8}] positioned ^ ^ ^0.5 run function kits:arcueid/arcueidpassive2	
