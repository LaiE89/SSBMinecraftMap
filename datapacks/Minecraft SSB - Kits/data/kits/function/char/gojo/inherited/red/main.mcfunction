## Execute at red
# sequence of events
scoreboard players add @s kits.timer2 1
execute if score @s kits.timer2 matches 0..19 run function kits:char/gojo/inherited/red/rest
execute if score @s kits.timer2 matches 20 rotated as @p[tag=Gojo] run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer2 matches 21.. run function kits:char/gojo/inherited/red/move

# collision
execute if entity @e[type=!#kits:non_entity,distance=..2,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] run function kits:char/gojo/inherited/red/collision
execute if entity @e[type=area_effect_cloud,distance=..2,tag=GojoBlue] run function kits:char/gojo/inherited/purple/use
