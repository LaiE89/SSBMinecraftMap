# Ability CDs
title @s actionbar ["",{"text":"Overload:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"Rune Prison:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"Spell Flux:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/20","color":"white"},{"text":" || ","color":"white"},{"text":"Realm Warp:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"aqua"},{"text":"/30","color":"aqua"}]

# Mana bar
scoreboard players add @s[scores={kits.timer2=..29}] kits.timer 1
execute as @s[scores={kits.timer=15..}] as @s[scores={kits.timer2=..29}] at @s run scoreboard players add @s kits.timer2 1
execute as @s[scores={kits.timer=..14}] as @s[scores={kits.timer2=..29}] at @s[scores={kits.criterion.attack=1..}] run scoreboard players add @s kits.timer2 7
scoreboard players reset @s[scores={kits.timer=15..}] kits.timer
scoreboard players set @s[scores={kits.timer2=31..}] kits.timer2 30

# Rune Prison
scoreboard players add @s[scores={kits.ability2CD=..49}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.ability2CD=50..}] as @s[scores={kits.timer2=10..}] as @s[scores={kits.criterion.shift=1..},predicate=kits:items/ryze/scroll] at @s run function kits:char/ryze/weapon2shift
execute as @e[type=area_effect_cloud,tag=RyzePrison] at @s run function kits:char/ryze/prison

# Overload
scoreboard players add @s[scores={kits.ability1CD=..49}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=50..},gamemode=!spectator,predicate=kits:items/ryze/book] as @s[scores={kits.criterion.COS=1..}] at @s[scores={kits.timer2=2..}] run function kits:char/ryze/weapon1cos
execute as @e[type=area_effect_cloud,tag=overload] at @s run function kits:char/ryze/overload

# Flux
scoreboard players add @s[scores={kits.ability3CD=..19}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.ability3CD=20..}] as @s[scores={kits.timer2=5..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/ryze/scroll] at @s run function kits:char/ryze/weapon2cos
execute at @e[type=area_effect_cloud,tag=overloadspread] if entity @e[distance=..20,limit=1,sort=nearest,tag=RyzeFlux] as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=overloadspread] at @s facing entity @e[distance=..20,limit=1,sort=nearest,tag=RyzeFlux] feet run tp @s ^ ^ ^1 facing entity @e[distance=..20,limit=1,sort=nearest,tag=RyzeFlux]

execute as @e[type=area_effect_cloud,tag=RyzeFluxBall] at @s facing entity @e[tag=RyzeFluxTarget,limit=1,sort=nearest] feet run tp @s ^0.25 ^0.2 ^1 facing entity @e[tag=RyzeFluxTarget,limit=1,sort=nearest]

execute as @e[tag=RyzeFlux] at @s run function kits:char/ryze/flux
execute as @e[tag=RyzeFluxTarget] at @s if entity @e[type=area_effect_cloud,tag=RyzeFluxBall,distance=..1] run function kits:char/ryze/fluxeffects

execute as @e[type=area_effect_cloud,tag=RyzeFluxBall] at @s run particle dust{color:[0.502,1.000,1.000],scale:0.5} ~ ~1 ~ 0.1 0.1 0.1 0.05 100 force
execute as @e[type=area_effect_cloud,tag=overloadspread] at @s run particle dust{color:[0.000,0.502,1.000],scale:0.5} ~ ~1 ~ 0.2 0.2 0.2 0.05 200 force
execute as @e[type=area_effect_cloud,tag=overloadspread] at @s run execute unless entity @e[tag=RyzeFlux,distance=..20] run kill @s

execute at @s[scores={kits.timer3=1..}] rotated ~ 0 run particle dust{color:[0.000,1.000,1.000],scale:0.5} ^-0.4 ^0.8 ^0.4 0.03 0.03 0.03 1 20 force
execute at @s[scores={kits.timer3=2..}] rotated ~ 0 run particle dust{color:[0.000,1.000,1.000],scale:0.5} ^0.4 ^0.8 ^0.4 0.03 0.03 0.03 1 20 force

# Realm Warp
scoreboard players add @s[scores={kits.ability4CD=..299}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability4CD=300..},predicate=kits:items/ryze/book] at @s run function kits:char/ryze/weapon1shift

execute as @e[type=armor_stand,tag=realmwarp] at @s run function kits:char/ryze/realmwarp
execute as @e[type=armor_stand,tag=realmwarp2] at @s run function kits:char/ryze/realmwarp2
