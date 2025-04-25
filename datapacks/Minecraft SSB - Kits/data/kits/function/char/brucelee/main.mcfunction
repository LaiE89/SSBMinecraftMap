# Ability CDs
title @s actionbar ["",{"text":"WATA:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Persistence:","color":"dark_green"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Intimidation:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Dragon Kick:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Marker:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"}]

# WATA
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[scores={kits.ability1CD=100},predicate=kits:items/brucelee/nunchucks] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/brucelee/weapon1cos

execute as @e[type=area_effect_cloud,tag=WATA] at @s run function kits:char/brucelee/wata

execute if entity @e[tag=BruceMarked] run scoreboard players add @s kits.timer2 1
execute if entity @s[scores={kits.timer2=90..}] run tag @e[tag=BruceMarked] remove BruceMarked
tag @s[scores={kits.timer2=90..}] remove BruceFlyingKick
scoreboard players reset @s[scores={kits.timer2=90..}] kits.timer2
execute at @e[tag=BruceMarked] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 10 force
execute if entity @e[tag=BruceMarked] as @s[gamemode=!spectator,tag=Brucelee,scores={kits.ability1CD=10..}] as @s[scores={kits.criterion.COS=1..},tag=!BruceFlyingKick,predicate=kits:items/brucelee/nunchucks] at @s run function kits:char/brucelee/flyingkick
execute at @s[tag=BruceFlyingKick] run execute if entity @e[tag=BruceMarked,limit=1,sort=nearest] as @s[tag=BruceFlyingKick] at @s facing entity @e[tag=BruceMarked,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2.5
execute as @e[tag=BruceMarked] at @s if entity @p[tag=Brucelee,tag=BruceFlyingKick,distance=..3] run function kits:char/brucelee/flyingkickdamage

# Persistence
scoreboard players add @s[scores={kits.ability2CD=..149}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=150..},predicate=kits:items/brucelee/persistence] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/brucelee/weapon2cos
effect give @s[tag=BruceIronWill,scores={kits.criterion.attack=1..}] minecraft:regeneration 1 3 true
execute at @s[tag=BruceIronWill] run particle totem_of_undying ~ ~1 ~ 0.4 1 0.4 0 2 force
scoreboard players add @s[tag=BruceIronWill] kits.timer 1
tag @s[tag=BruceIronWill,scores={kits.timer=60..}] remove BruceIronWill
scoreboard players reset @s[scores={kits.timer=60..}] kits.timer

# Punching Bag
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.ability3CD=300..},predicate=kits:items/brucelee/persistence] as @s[scores={kits.criterion.shift=1..}] at @s run function kits:char/brucelee/weapon2shift
execute at @e[type=area_effect_cloud,tag=BruceMarker] run particle falling_dust{block_state:"minecraft:diamond_block"} ~ ~ ~ 0 0 0 0 1 force

# Intimidation
scoreboard players add @s[scores={kits.ability4CD=..99}] kits.ability4CD 1
execute as @s[gamemode=!spectator,scores={kits.ability4CD=100..},predicate=kits:items/brucelee/nunchucks] as @s[scores={kits.criterion.shift=1..}] at @s run function kits:char/brucelee/weapon1shift

# Dragon Kick
scoreboard players add @s[scores={kits.ability5CD=..299}] kits.ability5CD 1
execute as @s[scores={kits.ability5CD=300..},predicate=kits:items/brucelee/dragon_kick] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/brucelee/weapon3cos

execute as @e[tag=BruceDragonKicked] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=BruceleeKick,limit=1,sort=nearest] feet run tp @s ^ ^ ^1.5
execute at @e[tag=BruceDragonKicked] run particle flame ~ ~ ~ 0.4 1 0.4 0 10 force
execute at @e[tag=BruceDragonKicked] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!BruceDragonKicked,tag=!InLabyrinth] at @s run function kits:char/brucelee/dragonkickdamage
execute as @e[tag=BruceDragonKicked] at @s if entity @e[type=minecraft:area_effect_cloud,tag=BruceleeKick,distance=..2] run function kits:char/brucelee/dragonkickend
