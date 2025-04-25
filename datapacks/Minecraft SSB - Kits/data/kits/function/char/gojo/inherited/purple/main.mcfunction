## Execute at purple
# sequence of events
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 0..16 run function kits:char/gojo/inherited/purple/combine
execute if score @s kits.timer matches 17 rotated as @p[tag=Gojo] run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 18.. run function kits:char/gojo/inherited/purple/move