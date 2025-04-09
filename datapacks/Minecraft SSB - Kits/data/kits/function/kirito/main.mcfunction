title @s[tag=!KiritoHorizontalSquare] actionbar ["",{"text":"Horizontal Square:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Vorpal Strike:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Speed Blitz:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/500","color":"white"}]
title @s[tag=KiritoHorizontalSquare] actionbar ["",{"text":"Horizontal Square:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"aqua"},{"text":"/4","color":"aqua"},{"text":" || ","color":"white"},{"text":"Vorpal Strike:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Speed Blitz:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/500","color":"white"}]

scoreboard players add @s[scores={kits.ability1CD=..199}] kits.ability1CD 1
execute if entity @s[tag=!KiritoHorizontalSquare,scores={kits.criterion.COS=1..},predicate=kits:items/kirito/elucidator] if entity @s[scores={kits.ability1CD=200..}] at @s run function kits:kirito/weapon1cos
execute as @s[tag=KiritoHorizontalSquare] at @s run function kits:kirito/horizontalsquare
execute as @e[type=area_effect_cloud,tag=KiritoHorizontalSquareAnimation] at @s run function kits:kirito/horizontalsquareanimation

scoreboard players add @s[scores={kits.ability2CD=..199}] kits.ability2CD 1
execute if entity @s[gamemode=!spectator,tag=!KiritoBlitz,scores={kits.criterion.shift=1..},predicate=kits:items/kirito/elucidator] if entity @s[scores={kits.ability2CD=200..}] at @s run function kits:kirito/weapon1shift

scoreboard players add @s[scores={kits.ability3CD=..499}] kits.ability3CD 1
execute if entity @s[scores={kits.criterion.COS=1..},predicate=kits:items/kirito/dark_repulser] if entity @s[scores={kits.ability3CD=500..}] at @s run function kits:kirito/weapon2cos
execute as @e[type=area_effect_cloud,tag=KiritoStandingLocation] at @s run tp @p[tag=KiritoBlitz] ~ ~ ~
execute as @e[type=area_effect_cloud,tag=KiritoBlitzLocation] at @s run function kits:kirito/blitzanimation

