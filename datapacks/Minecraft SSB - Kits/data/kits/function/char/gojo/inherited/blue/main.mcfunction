## Execute at blue
# sequence of events
scoreboard players add @s[scores={kits.timer=..40}] kits.timer 1
execute if score @s kits.timer matches 0..4 run function kits:char/gojo/inherited/blue/rest
execute if score @s kits.timer matches 5 rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoBlueInitRot] run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 6..19 run function kits:char/gojo/inherited/blue/move
execute if score @s kits.timer matches 20.. run function kits:char/gojo/inherited/blue/rest

# collision
execute as @e[type=!#kits:non_entity,distance=..6,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/gojo/inherited/blue/hit