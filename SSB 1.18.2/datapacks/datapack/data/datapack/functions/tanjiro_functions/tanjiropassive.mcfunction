# Ability CDs
title @p[tag=Tanjiro,tag=!TanjiroFiregod] actionbar ["",{"text":"Water Surface Slash: ","color":"blue"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Water Wheel: ","color":"aqua"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Constant Flux: ","color":"dark_aqua"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Fire God: ","color":"gold"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability4CD"},"color":"white"}]
title @p[tag=TanjiroFiregod,tag=Tanjiro] actionbar ["",{"text":"Raging Sun: ","color":"yellow"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Clear Blue Sky: ","color":"red"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Hinokami Kagura: ","color":"dark_red"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Fire God is Active: ","color":"gold"},{"score":{"name":"@p[tag=Tanjiro]","objective":"Timer2"},"color":"gold"},{"text":"/250","color":"gold"}]

# Constant Flux
scoreboard players add @p[tag=Tanjiro,scores={Ability1CD=..199}] Ability1CD 1
execute as @p[tag=Tanjiro,scores={Basic_Shift=1..},gamemode=!spectator] as @p[tag=Tanjiro,scores={Ability1CD=200..},predicate=datapack:tanjiro_items/blade] at @s run function datapack:tanjiro_functions/weapon1shift

execute as @p[tag=Tanjiro,tag=!TanjiroFiregod,tag=TanjiroConstantFlux] at @s run function datapack:tanjiro_functions/constantflux

execute as @p[tag=Tanjiro,tag=TanjiroFiregod,tag=TanjiroConstantFlux] at @s run function datapack:tanjiro_functions/hinokamikagura

scoreboard players add @p[tag=TanjiroConstantFlux] Timer 1
effect clear @p[tag=TanjiroConstantFlux,scores={Timer=100..}] minecraft:strength
effect clear @p[tag=TanjiroConstantFlux,scores={Timer=100..}] minecraft:speed
tag @p[tag=TanjiroConstantFlux,scores={Timer=100..}] remove TanjiroConstantFlux
scoreboard players reset @p[tag=Tanjiro,scores={Timer=100..}] Timer

# Water wheel
scoreboard players add @p[tag=Tanjiro,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[tag=Tanjiro,scores={Basic_COS=1..}] as @p[tag=Tanjiro,tag=!TanjiroFiregod,scores={Ability2CD=100..},predicate=datapack:tanjiro_items/water] at @s run function datapack:tanjiro_functions/waterwheel

execute as @p[tag=Tanjiro,scores={Basic_COS=1..}] as @p[tag=Tanjiro,tag=TanjiroFiregod,scores={Ability2CD=100..},predicate=datapack:tanjiro_items/water] at @s run function datapack:tanjiro_functions/clearbluesky

# Water Surface Slash
scoreboard players add @p[tag=Tanjiro,scores={Ability3CD=..49}] Ability3CD 1
execute as @p[tag=Tanjiro,scores={Basic_Shift=1..},gamemode=!spectator] as @p[tag=Tanjiro,tag=!TanjiroFiregod,scores={Ability3CD=50..},predicate=datapack:tanjiro_items/water] at @s run function datapack:tanjiro_functions/watersurfaceslash

execute as @p[tag=Tanjiro,scores={Basic_Shift=1..},gamemode=!spectator] as @p[tag=Tanjiro,tag=TanjiroFiregod,scores={Ability3CD=50..},predicate=datapack:tanjiro_items/water] at @s run function datapack:tanjiro_functions/ragingsun 

# Firegod
scoreboard players add @p[tag=Tanjiro,scores={Ability4CD=..699}] Ability4CD 1
execute as @p[tag=Tanjiro,scores={Basic_COS=1..}] as @p[tag=Tanjiro,scores={Ability4CD=700..},predicate=datapack:tanjiro_items/sun] at @s run function datapack:tanjiro_functions/firegod

execute at @p[tag=Tanjiro,tag=TanjiroFiregod] run effect give @e[tag=!Tanjiro,tag=!InLabyrinth,distance=..20] minecraft:slowness 1 0 true
execute at @p[tag=Tanjiro,tag=TanjiroFiregod] run particle minecraft:flame ~ ~0.5 ~ 0.4 1 0.4 0 3

scoreboard players add @p[tag=TanjiroFiregod] Timer2 1
tag @p[tag=TanjiroFiregod,scores={Timer2=250..}] remove TanjiroFiregod
scoreboard players reset @p[tag=Tanjiro,scores={Timer2=250..}] Timer2

scoreboard players add @p[tag=TanjiroConstantFlux,tag=Tanjiro,scores={Basic_IronSword=1..}] Timer3 1
scoreboard players reset @p[tag=!TanjiroConstantFlux,tag=Tanjiro,scores={Timer3=1..}] Timer3
