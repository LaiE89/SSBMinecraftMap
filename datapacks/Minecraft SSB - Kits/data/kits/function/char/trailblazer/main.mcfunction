# Ability Display
execute if score @s kits.ability2CD matches 0 run title @s actionbar [{"text":"SP: ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/5 || ","color":"white"},{"text":"Turn: ","color":"aqua"},{"text":"Jingliu","color":"white"}]
execute if score @s kits.ability2CD matches 1 run title @s actionbar [{"text":"SP: ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/5 || ","color":"white"},{"text":"Turn: ","color":"yellow"},{"text":"Luocha","color":"white"}]
execute if score @s kits.ability2CD matches 2 run title @s actionbar [{"text":"SP: ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/5 || ","color":"white"},{"text":"Turn: ","color":"green"},{"text":"Blade","color":"white"}]

# Cooldowns
scoreboard players add @s[scores={kits.ability3CD=..39}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..19}] kits.ability4CD 1

# Assigns Tasks to Entities
execute as @e[type=area_effect_cloud] at @s run function kits:char/trailblazer/assign_tasks/to_aecs
execute as @e[type=armor_stand] at @s run function kits:char/trailblazer/assign_tasks/to_stands

# Assigns Tasks to Self
execute if entity @s[predicate=kits:items/trailblazer/bat,gamemode=!spectator] at @s run function kits:char/trailblazer/use
execute if entity @s[nbt={HurtTime:9s}] at @s run function kits:char/trailblazer/talent/dmg_taken
execute at @s run function kits:char/trailblazer/talent/detect

## Essential Variables
# kits.ability1CD = skill points
# kits.ability2CD = turn order
# kits.ability3CD = basic cooldown
# kits.ability4CD = skill cooldown

## Talent Variables
# kits.timer = blade damage count
# kits.timer2 = jingliu skill usage
# kits.timer3 = luocha skill usage
# kits.timer4 = luocha turn count
# kits.timer5 = luocha health track
