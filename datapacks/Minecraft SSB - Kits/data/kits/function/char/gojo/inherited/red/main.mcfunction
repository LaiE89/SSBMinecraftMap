## Execute at red
# sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 0..19 run function kits:char/gojo/inherited/red/rest
execute if score @s kits.timer matches 20 rotated as @p[tag=Gojo] run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 21.. run function kits:char/gojo/inherited/red/move

# collision
execute if entity @e[type=area_effect_cloud,distance=..2,tag=GojoBlue] run function kits:char/gojo/inherited/purple/use
execute if entity @e[type=!#kits:non_entity,distance=..2,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] run function kits:char/gojo/inherited/red/collision