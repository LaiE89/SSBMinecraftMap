## When Spear of Longinus is Used
# Spawns spear of longinus above nearest enemy
scoreboard players set @s kits.specific.abiankits.raycastTick 0
execute positioned as @e[type=!#kits:non_entity,distance=..20,limit=1,sort=nearest,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] run function kits:char/abian/combo_meter/passive/spear/calculate_spawn
