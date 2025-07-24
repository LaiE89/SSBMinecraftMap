# Ability Display
title @s actionbar ["",{"text":"Shotgun: ","color":"yellow"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/2 || ","color":"white"},{"text":"Quickdraw: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Line Charge: ","color":"red"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || ","color":"white"},{"text":"Hasta La Vista: ","color":"dark_red"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"white"},{"text":"%","color":"white"}]

# Cooldowns
scoreboard players add @s[scores={kits.ability1CD=..39}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1
scoreboard players add @s[scores={kits.ability5CD=..199}] kits.ability5CD 1

# Using Conditions
execute if entity @s[predicate=kits:items/terminator/shotgun,gamemode=!spectator] at @s run function kits:char/terminator/shotgun/use
execute if entity @s[scores={kits.timer=..0}] at @s run function kits:char/terminator/shotgun/shoot/reloading
execute if entity @s[predicate=kits:items/terminator/grenade_launcher,gamemode=!spectator] at @s run function kits:char/terminator/grenade_launcher/use

# Assigns Tasks to Entities
execute as @e[type=area_effect_cloud] at @s run function kits:char/terminator/assign_tasks/to_aecs
execute as @e[type=armor_stand] at @s run function kits:char/terminator/assign_tasks/to_armorstands
execute if entity @s[tag=TerminatorDashing] at @s run function kits:char/terminator/shotgun/dash/main
