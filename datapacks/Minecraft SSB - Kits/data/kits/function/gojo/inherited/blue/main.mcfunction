## Execute at Blue
# Sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 0..39 run function kits:gojo/inherited/blue/rest
execute if score @s kits.timer matches 40 rotated as @e[limit=1,sort=nearest,tag=GojoBlueInitRot,type=area_effect_cloud] run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 41.. run function kits:gojo/inherited/blue/move

# Collision
execute as @e[distance=..6,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:gojo/inherited/blue/hit
