# Ability CDs
title @s actionbar ["",{"text":"Ballista:","color":"red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/50","color":"white"},{"text":" || ","color":"white"},{"text":"Meat Hook:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"BFG:","color":"dark_green"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/500","color":"white"},{"text":" || ","color":"white"},{"text":"Blood Punch: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability7CD"},"color":"red"},{"text":"/100","color":"red"},{"text":" || ","color":"white"},{"text":"Dash Charges: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"gold"},{"text":"/3","color":"gold"}]

# Glory Kill
execute store result score @s kits.health2 run data get entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,limit=1,sort=nearest] Health
execute at @s[scores={kits.health2=..3}] as @e[distance=..8,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.3 0.5 0.3 0 5 force

# Dash
execute at @s run function kits:_main/inputs/wasd/main
scoreboard players add @s[scores={kits.ability5CD=..2}] kits.ability6CD 1
scoreboard players add @s[scores={kits.ability6CD=50..}] kits.ability5CD 1
scoreboard players reset @s[scores={kits.ability6CD=50..}] kits.ability6CD

execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/doomslayer/shotgun] at @s[tag=!DoomslayerDashCD,scores={kits.ability5CD=1..}] run function kits:doomslayer/dash/passive1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/doomslayer/shotgun] at @s if entity @s[scores={kits.health2=..3}] as @e[distance=..8,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run function kits:doomslayer/glorykill

scoreboard players add @s[tag=DoomslayerDashCD] kits.timer2 1
tag @s[tag=DoomslayerDashCD,scores={kits.timer2=10..}] remove DoomslayerDashCD
attribute @s[tag=DoomslayerDashCD,scores={kits.timer2=3..}] minecraft:movement_speed modifier remove speed.dash.doomslayer
scoreboard players reset @s[scores={kits.timer2=10..}] kits.timer2

# Shotgun
scoreboard players add @s[scores={kits.ability1CD=..24}] kits.ability1CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=25..},predicate=kits:items/doomslayer/shotgun] at @s run function kits:doomslayer/weapon1cos

# Ballista
scoreboard players add @s[scores={kits.ability2CD=..49}] kits.ability2CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability2CD=50..},predicate=kits:items/doomslayer/ballista] at @s run function kits:doomslayer/weapon2cos

# Meat Hook
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability3CD=200..},predicate=kits:items/doomslayer/ballista] at @s run function kits:doomslayer/weapon2shift
execute at @s if entity @e[tag=DoomslayerHooked,limit=1,sort=nearest] as @s at @s facing entity @e[tag=DoomslayerHooked,limit=1,sort=nearest] eyes run tp @s ^ ^ ^2
execute at @s if entity @e[tag=DoomslayerHooked,distance=..4] run tag @e[tag=DoomslayerHooked] remove DoomslayerHooked
execute as @e[type=item,tag=DoomslayerArmorPack] at @s run function kits:doomslayer/meathook/armorpack

# BFG
scoreboard players add @s[scores={kits.ability4CD=..499}] kits.ability4CD 1
execute as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.ability4CD=500..},predicate=kits:items/doomslayer/bfg] at @s run function kits:doomslayer/weapon3cos

# Equipment Launcher
execute if entity @s[gamemode=!spectator,scores={kits.timer=3..}] run function kits:doomslayer/equipmentlauncher

# Blood Punch
scoreboard players set @s[scores={kits.ability7CD=101..}] kits.ability7CD 100
execute if score @s kits.ability7CD matches 100.. if score @s kits.criterion.attack matches 1.. at @s run function kits:doomslayer/bloodpunch/bloodpunch

# Assignment
execute as @e[type=armor_stand] at @s run function kits:doomslayer/armorstandassign
execute as @e[type=area_effect_cloud] at @s run function kits:doomslayer/areaeffectcloudassign