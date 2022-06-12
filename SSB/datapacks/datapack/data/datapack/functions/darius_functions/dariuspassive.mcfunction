# Ability CDs
title @p[tag=Darius] actionbar ["",{"text":"Decimate:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Darius]","objective":"Ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Crippling Strike:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=Darius]","objective":"Ability3CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Apprehend:","color":"yellow"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Darius]","objective":"Ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Noxian Guillotine:","color":"dark_red"},{"text":" ","color":"aqua"},{"score":{"name":"@p[tag=Darius]","objective":"Ability4CD"},"color":"white"}]

# Passive
execute at @p[tag=Darius,scores={Basic_Attack=1..}] run scoreboard players add @e[tag=!Darius,distance=..8,limit=1,sort=nearest,nbt={HurtTime:10s}] DariusPassive 1
execute if entity @e[tag=DariusNoxianMight] run tag @p[tag=Darius,tag=!DariusRage] add DariusRage

execute at @p[tag=Darius,tag=DariusRage,scores={Basic_Attack=1..}] run scoreboard players set @e[tag=!Darius,distance=..8,limit=1,sort=nearest,nbt={HurtTime:10s},scores={DariusPassive=..4}] DariusPassive 5
effect give @p[tag=DariusRage] minecraft:strength 1 0 true
effect give @p[tag=DariusRage] minecraft:speed 1 1 true
execute at @p[tag=DariusRage] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.5 1 0.5 0 3

execute at @e[tag=DariusNoxianMight] run function datapack:darius_functions/noxianmightparticles

scoreboard players add @e[tag=DariusNoxianMight] DariusBleedTime 1
scoreboard players reset @e[tag=DariusNoxianMight,scores={DariusBleedTime=150..}] DariusPassive
tag @e[tag=DariusNoxianMight,scores={DariusBleedTime=150..}] remove DariusNoxianMight
scoreboard players reset @e[scores={DariusBleedTime=150..}] DariusBleedTime

scoreboard players add @p[tag=DariusRage] Timer 1
tag @p[tag=Darius,scores={Timer=150..}] remove DariusRage
scoreboard players reset @p[tag=Darius,scores={Timer=150..}] Timer

# Decimate
scoreboard players add @e[tag=Darius,scores={Ability1CD=..79}] Ability1CD 1
execute as @p[gamemode=!spectator,tag=Darius,scores={Basic_Shift=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Darius\' Axe","italic":false,"color":"red"}]'}}}}] as @p[tag=Darius,scores={Ability1CD=80..}] at @s run function datapack:darius_functions/weapon1cos

scoreboard players add @e[type=area_effect_cloud,tag=DariusDecimate] Timer 1
execute as @p[tag=Darius] at @s run tp @e[type=area_effect_cloud,tag=DariusDecimate] ~ ~ ~
execute as @e[type=area_effect_cloud,tag=DariusDecimate] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[type=area_effect_cloud,tag=DariusDecimate] at @s run particle minecraft:dust 1 1 1 2 ^ ^1.5 ^5 0 0 0 0 1

execute as @e[type=area_effect_cloud,tag=DariusDecimate,scores={Timer=10}] at @s run playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..15] ~ ~ ~ 5 0 1
execute as @e[type=area_effect_cloud,tag=DariusDecimate,scores={Timer=10..18}] at @s run function datapack:darius_functions/decimateparticles

execute if entity @e[type=area_effect_cloud,tag=DariusDecimate,scores={Timer=18..}] run tag @e[tag=DariusDecimated] remove DariusDecimated

# Apprehend
scoreboard players add @e[tag=Darius,scores={Ability2CD=..149}] Ability2CD 1
execute as @p[gamemode=!spectator,tag=Darius,scores={Ability2CD=150..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Darius\' Skills","italic":false,"color":"dark_red"}]'}}}}] as @p[tag=Darius,scores={Basic_COS=1..}] at @s run function datapack:darius_functions/weapon2cos

# Crippling Strike
scoreboard players add @e[tag=Darius,scores={Ability3CD=..69}] Ability3CD 1
execute as @p[tag=Darius,scores={Ability3CD=70..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Darius\' Axe","italic":false,"color":"red"}]'}}}}] as @p[tag=Darius,scores={Basic_COS=1..}] at @s run function datapack:darius_functions/weapon1shift

# Noxian Guillotine
scoreboard players set @p[tag=Darius,scores={Basic_Kills=1..}] Ability4CD 345
scoreboard players reset @p[tag=Darius,scores={Basic_Kills=1..}] Timer

scoreboard players add @e[tag=Darius,scores={Ability4CD=..349}] Ability4CD 1
execute as @p[tag=Darius,scores={Ability4CD=350..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Darius\' Skills","italic":false,"color":"dark_red"}]'}}}}] as @p[tag=Darius,scores={Basic_Shift=1..}] at @s run function datapack:darius_functions/weapon2shift

# More Passive Stuff
tag @e[scores={DariusPassive=5}] add DariusNoxianMight
effect give @e[scores={DariusPassive=5}] minecraft:wither 7 0 true
execute at @e[scores={DariusPassive=5}] run playsound minecraft:entity.elder_guardian.curse neutral @a[distance=..20] ~ ~ ~ 10 0.5 1
scoreboard players set @e[scores={DariusPassive=5}] DariusPassive 6