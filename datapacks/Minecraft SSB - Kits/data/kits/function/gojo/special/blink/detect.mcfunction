# Detects if User is Facing an Enemy
scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @e[distance=..2,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:gojo/special/blink/found
execute if score @s kits.raycastTick matches ..29 positioned ^ ^ ^0.5 run function kits:gojo/special/blink/detect
