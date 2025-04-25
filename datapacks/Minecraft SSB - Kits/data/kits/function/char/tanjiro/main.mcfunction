# Ability CDs
title @s[tag=!TanjiroFiregod] actionbar ["",{"text":"Water Surface Slash: ","color":"blue"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability3CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"Water Wheel: ","color":"aqua"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Constant Flux: ","color":"dark_aqua"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability1CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Fire God: ","color":"gold"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability4CD"},"color":"white"},{"text":"/700","color":"white"}]
title @s[tag=TanjiroFiregod] actionbar ["",{"text":"Raging Sun: ","color":"yellow"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability3CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"Clear Blue Sky: ","color":"red"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Hinokami Kagura: ","color":"dark_red"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.ability1CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Fire God is Active: ","color":"gold"},{"score":{"name":"@s[tag=Tanjiro]","objective":"kits.timer2"},"color":"gold"},{"text":"/250","color":"gold"}]

# kits.constant Flux
scoreboard players add @s[scores={kits.ability1CD=..199}] kits.ability1CD 1
execute as @s[scores={kits.criterion.shift=1..},gamemode=!spectator] as @s[scores={kits.ability1CD=200..},predicate=kits:items/tanjiro/blade] at @s run function kits:char/tanjiro/weapon1shift

execute as @s[tag=!TanjiroFiregod,tag=TanjiroConstantFlux] at @s run function kits:char/tanjiro/constantflux

execute as @s[tag=TanjiroFiregod,tag=TanjiroConstantFlux] at @s positioned ~ ~1 ~ run function kits:char/tanjiro/hinokamikagura

scoreboard players add @s[tag=TanjiroConstantFlux] kits.timer 1
effect clear @s[tag=TanjiroConstantFlux,scores={kits.timer=100..}] minecraft:strength
effect clear @s[tag=TanjiroConstantFlux,scores={kits.timer=100..}] minecraft:speed
tag @s[tag=TanjiroConstantFlux,scores={kits.timer=100..}] remove TanjiroConstantFlux
scoreboard players reset @s[scores={kits.timer=100..}] kits.timer

# Water wheel
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[tag=!TanjiroFiregod,scores={kits.ability2CD=100..},predicate=kits:items/tanjiro/water] at @s run function kits:char/tanjiro/waterwheel

execute as @s[scores={kits.criterion.COS=1..}] as @s[tag=TanjiroFiregod,scores={kits.ability2CD=100..},predicate=kits:items/tanjiro/water] at @s run function kits:char/tanjiro/clearbluesky

# Water Surface Slash
scoreboard players add @s[scores={kits.ability3CD=..49}] kits.ability3CD 1
execute as @s[scores={kits.criterion.shift=1..},gamemode=!spectator] as @s[tag=!TanjiroFiregod,scores={kits.ability3CD=50..},predicate=kits:items/tanjiro/water] at @s run function kits:char/tanjiro/watersurfaceslash

execute as @s[scores={kits.criterion.shift=1..},gamemode=!spectator] as @s[tag=TanjiroFiregod,scores={kits.ability3CD=50..},predicate=kits:items/tanjiro/water] at @s run function kits:char/tanjiro/ragingsun 

# Firegod
scoreboard players add @s[scores={kits.ability4CD=..699}] kits.ability4CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability4CD=700..},predicate=kits:items/tanjiro/sun] at @s run function kits:char/tanjiro/firegod

execute at @s[tag=TanjiroFiregod] run effect give @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth,distance=..20] minecraft:slowness 1 0 true
execute at @s[tag=TanjiroFiregod] run particle flame ~ ~0.5 ~ 0.4 1 0.4 0 3 force

scoreboard players add @s[tag=TanjiroFiregod] kits.timer2 1
tag @s[tag=TanjiroFiregod,scores={kits.timer2=250..}] remove TanjiroFiregod
scoreboard players reset @s[scores={kits.timer2=250..}] kits.timer2

scoreboard players add @s[tag=TanjiroConstantFlux,scores={kits.criterion.swordIron=1..}] kits.timer3 1
scoreboard players reset @s[tag=!TanjiroConstantFlux,scores={kits.timer3=1..}] kits.timer3
