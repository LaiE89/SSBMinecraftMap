# Ability Display
title @s actionbar [{"text":"Cursed Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Infinity: ","color":"blue"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/5","color":"white"}]

# Cooldowns
scoreboard players add @s kits.ability2CD 1
scoreboard players add @s[scores={kits.ability3CD=..19}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..19}] kits.ability4CD 1
scoreboard players add @s[scores={kits.ability5CD=..19}] kits.ability5CD 1
scoreboard players add @s[scores={kits.ability6CD=..59}] kits.ability6CD 1
execute if score @s[scores={kits.ability1CD=..99}] kits.ability2CD matches 5.. run function kits:gojo/energyregen

# Using Conditions
execute if entity @s[predicate=kits:items/gojo/inherited,gamemode=!spectator] run function kits:gojo/inherited/use
execute if entity @s[predicate=kits:items/gojo/special,gamemode=!spectator] run function kits:gojo/special/use

# Assigns Tasks to Entities
execute as @e[type=area_effect_cloud] at @s run function kits:gojo/assign_tasks/to_aecs
execute if score @s kits.timer matches 1.. run function kits:gojo/infinity/on

# kits.ability1CD = cursed energy
# kits.ability2CD = cursed energy regeneration rate
# kits.ability3CD = red delay
# kits.ability4CD = blue delay
# kits.ability5CD = blink delay
# kits.ability6CD = domain delay
# kits.timer = infinity stacks
# kits.timer2 = cursed energy 50 count
