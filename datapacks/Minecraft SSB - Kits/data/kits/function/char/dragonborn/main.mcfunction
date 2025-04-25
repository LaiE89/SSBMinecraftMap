title @s[scores={kits.timer=0}] actionbar ["",{"text":"Shout:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Whirlwind Sprint","color":"dark_aqua","bold":true}]
title @s[scores={kits.timer=1}] actionbar ["",{"text":"Shout:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Marked For Death","color":"dark_red","bold":true}]
title @s[scores={kits.timer=2}] actionbar ["",{"text":"Shout:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Unrelenting Force","color":"dark_green","bold":true}]

execute if entity @e[type=area_effect_cloud,tag=Dragonborn_VFX_ExpandingSphere] as @e[type=area_effect_cloud,tag=Dragonborn_VFX_ExpandingSphere] at @s run function kits:char/dragonborn/expanding_sphere/run

scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute if entity @s[scores={kits.criterion.COS=1..}] if entity @s[scores={kits.ability1CD=100..},predicate=kits:items/dragonborn/dawnbreaker] at @s run function kits:char/dragonborn/weapon1cos

scoreboard players add @s[scores={kits.ability2CD=..9}] kits.ability2CD 1
execute if entity @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] if entity @s[scores={kits.ability2CD=10..},predicate=kits:items/dragonborn/dawnbreaker] at @s run function kits:char/dragonborn/weapon1shift

execute as @e[type=area_effect_cloud,tag=DragonbornForce] at @s run function kits:char/dragonborn/forceprojectile
execute as @e[tag=DragonbornMarked] at @s run function kits:char/dragonborn/markedeffects
