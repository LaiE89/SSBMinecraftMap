# Mana bar
scoreboard players add @p[tag=Ryze,scores={Timer2=..29}] Timer 1
execute as @p[tag=Ryze,scores={Timer=7..}] as @p[tag=Ryze,scores={Timer2=..29}] at @s run scoreboard players add @s Timer2 1
scoreboard players reset @p[tag=Ryze,scores={Timer=7..}] Timer

# Ability CDs
title @p[tag=Ryze] actionbar ["",{"text":"Overload:","color":"light_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ryze]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Rune Prison:","color":"dark_blue"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ryze]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Spell Flux:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Ryze]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Realm Warp:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Ryze]","objective":"Ability4CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Mana: ","color":"aqua"},{"score":{"name":"@p[tag=Ryze]","objective":"Timer2"},"color":"aqua"}]

# Rune Prison
scoreboard players add @p[tag=Ryze,scores={Ability2CD=..99}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Ryze,scores={Ability2CD=100..}] as @p[tag=Ryze,scores={Timer2=15..}] as @p[scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ryze\'s Scroll","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ryze_functions/weapon2shift

execute as @e[type=armor_stand,tag=RyzePrison,scores={Timer=2}] at @s run tp @e[tag=RyzeInPrison,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[type=armor_stand,tag=RyzePrison,scores={Timer=3..}] at @s run tp @e[tag=RyzeInPrison,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[type=armor_stand,tag=RyzePrison] at @s run function datapack:ryze_functions/prisonparticles
scoreboard players add @e[type=armor_stand,tag=RyzePrison] Timer 1
execute if entity @e[type=armor_stand,tag=RyzePrison,scores={Timer=50..}] run tag @e[tag=RyzeInPrison] remove RyzeInPrison
kill @e[type=armor_stand,tag=RyzePrison,scores={Timer=50..}]

# Overload
scoreboard players add @p[tag=Ryze,scores={Ability1CD=..79}] Ability1CD 1
execute as @p[tag=Ryze,scores={Ability1CD=80..},gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ryze\'s Book","italic":false,"color":"dark_aqua"}]'}}}}] as @p[tag=Ryze,scores={Basic_COS=1..}] at @s run function datapack:ryze_functions/weapon1cos
execute as @e[type=armor_stand,tag=overload,tag=!facingoverload] at @s run tp @s ~ ~ ~ facing entity @p[tag=Ryze]
tag @e[type=armor_stand,tag=overload,tag=!facingoverload] add facingoverload
execute as @e[type=armor_stand,tag=overload] at @s run tp @s ^ ^ ^-2

execute at @e[type=armor_stand,tag=overload] as @e[distance=..2,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ryze,tag=!InLabyrinth] at @s run function datapack:ryze_functions/overloaddamage
execute as @e[type=armor_stand,tag=overload] at @s run particle minecraft:dust 0 1 1 1 ~ ~1.5 ~ 0.3 0.3 0.3 0.05 30
scoreboard players add @e[type=armor_stand,tag=overload] Timer2 1
kill @e[type=armor_stand,tag=overload,scores={Timer2=10..}]

# Flux
scoreboard players add @p[tag=Ryze,scores={Ability3CD=..19}] Ability3CD 1
execute as @p[gamemode=!spectator,tag=Ryze,scores={Ability3CD=20..}] as @p[tag=Ryze,scores={Timer2=10..}] as @p[scores={Basic_COS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ryze\'s Scroll","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ryze_functions/weapon2cos

execute as @e[tag=RyzeFlux,nbt={HurtTime:10s}] at @s run function datapack:ryze_functions/fluxdamage
execute at @e[type=armor_stand,tag=overloadspread] if entity @e[distance=..20,limit=1,sort=nearest,tag=RyzeFlux] as @e[type=armor_stand,limit=1,sort=nearest,tag=overloadspread] at @s facing entity @e[distance=..20,limit=1,sort=nearest,tag=RyzeFlux] feet run tp @s ^ ^ ^1 facing entity @e[distance=..20,limit=1,sort=nearest,tag=RyzeFlux]

execute as @e[tag=RyzeFlux] at @s if entity @e[type=armor_stand,tag=overloadspread,distance=..2] run function datapack:ryze_functions/fluxspreaddamage

scoreboard players add @e[tag=overloadspread,type=armor_stand] Timer 1
kill @e[tag=overloadspread,type=armor_stand,scores={Timer=40..}]
execute as @e[tag=overloadspread,type=armor_stand] at @s run execute unless entity @e[tag=RyzeFlux,distance=..20] run kill @s

scoreboard players add @e[tag=RyzeFlux] RyzeFluxTimer 1
tag @e[tag=RyzeFlux,scores={RyzeFluxTimer=75..}] remove RyzeFlux
scoreboard players reset @e[scores={RyzeFluxTimer=75..}] RyzeFluxTimer
execute at @e[tag=RyzeFlux] run particle minecraft:dust 0 0.8 1 1 ~ ~ ~ 0.5 0.3 0.5 0 30

execute at @p[tag=Ryze,scores={Timer3=1..}] run particle minecraft:dust 0 1 1 1 ^-0.4 ^0.8 ^0.4 0.03 0.03 0.03 1 20
execute at @p[tag=Ryze,scores={Timer3=2..}] run particle minecraft:dust 0 1 1 1 ^0.4 ^0.8 ^0.4 0.03 0.03 0.03 1 20

# Realm Warp
scoreboard players add @p[tag=Ryze,scores={Ability4CD=..299}] Ability4CD 1
execute as @p[tag=Ryze,gamemode=!spectator,scores={Basic_Shift=1..}] as @p[tag=Ryze,scores={Ability4CD=300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Ryze\'s Book","italic":false,"color":"dark_aqua"}]'}}}}] at @s run function datapack:ryze_functions/weapon1shift

scoreboard players add @e[type=armor_stand,tag=realmwarp] Timer3 1
scoreboard players add @e[type=armor_stand,tag=realmwarp2] Timer3 1
execute at @e[type=armor_stand,tag=realmwarp] run particle minecraft:item minecraft:blue_glazed_terracotta ~ ~0.2 ~ 2 0 2 0 50
execute at @e[type=armor_stand,tag=realmwarp] run particle minecraft:dust 0 0 2 1 ~ ~0.1 ~ 2 0 2 0 50
execute at @e[type=armor_stand,tag=realmwarp2] run particle minecraft:dust 0 2 1 1 ~ ~0.1 ~ 2 0 2 0 50
execute at @e[type=armor_stand,tag=realmwarp,scores={Timer3=59..}] if entity @p[tag=Ryze,distance=..4] run execute at @p[tag=Ryze,distance=..4] run particle minecraft:flash
execute at @e[type=armor_stand,tag=realmwarp,scores={Timer3=59..}] if entity @p[tag=Ryze,distance=..4] run execute at @p[tag=Ryze,distance=..4] run particle minecraft:dust 1 1 0 1 ~ ~3 ~ 0.1 4 0.1 0 200
execute at @e[type=armor_stand,tag=realmwarp,scores={Timer3=60..}] if entity @p[tag=Ryze,distance=..4] run tp @p[tag=Ryze,distance=..4] @e[type=armor_stand,tag=realmwarp2,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=realmwarp,scores={Timer3=60..}]
kill @e[type=armor_stand,tag=realmwarp2,scores={Timer3=61..}]

