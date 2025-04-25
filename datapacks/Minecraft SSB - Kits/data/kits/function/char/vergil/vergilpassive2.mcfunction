scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..1.5,type=!#kits:non_entity,tag=!Invincible,tag=!Vergil,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute if entity @s[scores={kits.raycastTick=2222}] as @e[distance=..1.5,type=!#kits:non_entity,tag=!Invincible,tag=!Vergil,tag=!InLabyrinth,limit=1,sort=nearest] at @s positioned ~ ~3 ~ facing entity @p[tag=Vergil] eyes rotated ~ 0 run function kits:char/vergil/trickicon
execute as @s[scores={kits.raycastTick=..16}] positioned ^ ^ ^0.5 run function kits:char/vergil/vergilpassive2 
