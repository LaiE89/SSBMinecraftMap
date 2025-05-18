# Actionbar
function kits:char/abian/inputs/score_trees/actionbar/root

# Cooldowns
scoreboard players add @s[scores={kits.ability1CD=..3}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability2CD=..299}] kits.ability2CD 1
scoreboard players add @s[scores={kits.ability5CD=..9}] kits.ability5CD 1
scoreboard players remove @s[scores={kits.ability4CD=1..}] kits.ability4CD 1

# Using Conditions
execute if entity @s[scores={kits.ability1CD=3..},predicate=kits:items/abian/kusarigama,gamemode=!spectator,tag=!AbianInputsDelay] as @s[scores={kits.ability2CD=40..}] at @s run function kits:char/abian/inputs/get/root
execute if entity @s[scores={kits.ability5CD=10..},predicate=kits:items/abian/teleportation,gamemode=!spectator] at @s run function kits:char/abian/teleportation/use
execute if entity @s[scores={kits.criterion.attack=1..}] at @s run function kits:char/abian/attack

# Assigns Tasks to Entities
execute as @e[type=!#kits:non_entity,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/abian/assign_tasks/to_enemies
execute as @e[type=area_effect_cloud] at @s run function kits:char/abian/assign_tasks/to_aecs
execute if score @s kits.ability4CD matches 0 run scoreboard players remove @s[scores={kits.ability3CD=1..}] kits.ability3CD 1

# Global Scores
scoreboard players add @s kits.timer7 1
execute if score @s kits.timer7 matches 5.. run scoreboard players reset @s kits.timer7

# kits.ability1CD = input cd
# kits.ability2CD = energy
# kits.ability3CD = combo meter
# kits.ability4CD = combo meter decay
# kits.ability5CD = teleportation cd

# kits.timer = initial input data id
# kits.timer2 = initial input order id
# kits.timer3 = combined inputs id
# kits.timer4 = actionbar input storage
# kits.timer5 = repetition cost storage
# kits.timer6 = aerial slash vfx cycles
# kits.timer7 = AbianVFXDelay
# kits.timer8 = AbianUsedMovesArr1
# kits.timer9 = AbianUsedMovesArr2
