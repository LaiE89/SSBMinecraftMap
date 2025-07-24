## Ability Display
title @s actionbar ["",{"text":"Dash: ","color":"green"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Delaware Smash: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.timer3"},"color":"white"},{"text":"/5","color":"white"},{"text":" || ","color":"white"},{"text":"Detroit Smash: ","color":"red"},{"score":{"name":"@s","objective":"kits.timer4"},"color":"white"},{"text":"%","color":"white"},{"text":" || ","color":"white"},{"text":"Full Cowl: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer"},"color":"white"},{"text":"%","color":"white"}]

## Cooldowns
# execute if entity @s[scores={kits.ability2CD=500..}] run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
# execute unless entity @s[scores={kits.timer3=3..}] run scoreboard players add @s kits.ability2CD 1
execute if entity @s[scores={kits.criterion.carrot=1..}] if entity @s[scores={kits.timer3=..4}] at @s run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
execute if entity @s[scores={kits.criterion.attack=1..}] at @s run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge_rng
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability3CD=..9}] kits.ability3CD 1
scoreboard players add @s[scores={kits.ability4CD=..9}] kits.ability4CD 1

## Using Conditions
execute as @s[scores={kits.criterion.attack=1..},predicate=kits:items/midoriya/one_for_all] at @s run function kits:char/midoriya/one_for_all/detroit_smash/attack
execute as @s[scores={kits.criterion.COS=1..},predicate=kits:items/midoriya/one_for_all] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/midoriya/one_for_all/dash/determine_use
execute as @s[scores={kits.criterion.COS=1..},predicate=kits:items/midoriya/full_cowl] as @s[scores={kits.ability4CD=10..}] at @s run function kits:char/midoriya/full_cowl/energy_focus/determine_use
execute as @s[scores={kits.criterion.shift=1..},predicate=kits:items/midoriya/full_cowl,gamemode=!spectator] as @s[scores={kits.timer4=..99}] at @s rotated ~ 0 run function kits:char/midoriya/full_cowl/energy_accumulation/use
execute as @s[scores={kits.criterion.shift=1..},predicate=kits:items/midoriya/one_for_all,gamemode=!spectator] as @s[scores={kits.ability3CD=10..}] as @s[scores={kits.timer3=1..}] if entity @s[scores={kits.timer=..99}] at @s run function kits:char/midoriya/one_for_all/delaware_smash/use
execute as @s[scores={kits.criterion.shift=1..},predicate=kits:items/midoriya/one_for_all,gamemode=!spectator] as @s[scores={kits.ability3CD=10..}] as @s[scores={kits.timer3=1..}] if entity @s[scores={kits.timer=100},tag=!MidoriyaCharging] at @s run function kits:char/midoriya/one_for_all/delaware_smash/delay

## Assigns Tasks to Entities
execute as @e[tag=MidoriyaDelawareSmashShockwave,type=area_effect_cloud] at @s run function kits:char/midoriya/one_for_all/delaware_smash/determine_strength
execute if entity @s[scores={kits.timer4=100..}] at @s rotated ~ 0 run function kits:char/midoriya/full_cowl/energy_accumulation/cont_full_indication
execute if entity @s[scores={kits.timer=100}] at @s positioned ~ ~1 ~ rotated ~ 0 run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/main
execute if entity @s[tag=MidoriyaDashing] at @s run function kits:char/midoriya/one_for_all/dash/main
