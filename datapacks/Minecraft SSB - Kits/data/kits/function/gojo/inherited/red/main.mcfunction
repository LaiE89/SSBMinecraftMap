## Execute at Red
# Sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 0..19 run function kits:gojo/inherited/red/rest
execute if score @s kits.timer matches 20 rotated as @e[limit=1,sort=nearest,tag=GojoRedInitRot,type=area_effect_cloud] run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 21.. run function kits:gojo/inherited/red/move

# Collision
execute if entity @e[distance=..2,tag=GojoBlue,type=area_effect_cloud] run function kits:gojo/inherited/purple/use
execute if entity @e[distance=..2,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:gojo/inherited/red/collision
