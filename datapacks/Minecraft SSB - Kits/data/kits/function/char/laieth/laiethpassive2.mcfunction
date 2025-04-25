scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222}] run function kits:char/laieth/possessionactivate
execute as @s[scores={kits.raycastTick=..20}] positioned ^ ^ ^0.5 run function kits:char/laieth/laiethpassive2
