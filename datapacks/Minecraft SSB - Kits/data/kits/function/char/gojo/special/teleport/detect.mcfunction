## Detects if user is facing an enemy
# collision check
execute positioned ^ ^ ^0.5 run function kits:char/gojo/utilities/check_block_local
execute positioned as @e[type=!#kits:non_entity,distance=..2,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] run function kits:char/gojo/special/teleport/found

# recursive call
scoreboard players remove @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 1.. positioned ^ ^ ^0.5 run function kits:char/gojo/special/teleport/detect