## Ability Display
title @s actionbar ["",{"text":"Plasma Cut: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"/3 || ","color":"white"},{"text":"Plasma Energy: ","color":"blue"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"white"},{"text":"/3 || ","color":"white"},{"text":"Explosive Canister: ","color":"red"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"white"},{"text":"/3 || ","color":"white"},{"text":"Stasis: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"kits.timer4"},"color":"white"},{"text":"/2","color":"white"}]

## Cooldowns
# Recharge cooldowns
execute if score @s kits.ability3CD matches 200.. run function kits:char/isaac/plasma_cutter/explosive_canister/gain_charge
execute if score @s kits.ability5CD matches 300.. run function kits:char/isaac/modules/stasis/gain_charge
execute unless score @s kits.timer3 matches 3.. run scoreboard players add @s kits.ability3CD 1
execute unless score @s kits.timer4 matches 2.. run scoreboard players add @s kits.ability5CD 1

# Rate of Fire
scoreboard players add @s[scores={kits.ability1CD=..7}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1
scoreboard players add @s[scores={kits.ability2CD=..19}] kits.ability2CD 1

## Using Conditions
execute if entity @s[scores={kits.criterion.attack=1..}] as @e[nbt={HurtTime:10s},limit=1,sort=nearest] at @s run function kits:char/isaac/attack
execute if entity @s[predicate=kits:items/isaac/plasma_cutter,gamemode=!spectator] at @s run function kits:char/isaac/plasma_cutter/use
execute if entity @s[predicate=kits:items/isaac/modules,gamemode=!spectator] at @s run function kits:char/isaac/modules/use

## Assigns Tasks to Entities
execute as @e[type=area_effect_cloud] at @s run function kits:char/isaac/assign_tasks/to_aecs
execute as @e[type=armor_stand] at @s run function kits:char/isaac/assign_tasks/to_armorstands
