# Actionbar
title @s actionbar [{"text":"Shield: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/5 || ","color":"white"},{"text":"Super: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Magic: ","color":"blue"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":" || ","color":"white"},{"text":"Darkfire: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"}]

# Cooldowns
scoreboard players add @s[scores={kits.ability1CD=..299}] kits.ability1CD 1
scoreboard players add @s[scores={kits.ability2CD=..199}] kits.ability2CD 1
scoreboard players add @s[scores={kits.ability4CD=..99}] kits.ability4CD 1

# Using Conditions
execute if entity @s[predicate=kits:items/siris/infinity_blade,gamemode=!spectator] run function kits:siris/blade/use
execute if entity @s[predicate=kits:items/siris/vile_shield,gamemode=!spectator] run function kits:siris/shield/use

# Assigns Tasks to Entities
execute as @e[tag=!Siris,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] at @s run function kits:siris/assign_tasks/to_enemies
execute as @e[type=area_effect_cloud] at @s run function kits:siris/assign_tasks/to_aecs
execute if score @s kits.timer matches 1.. run function kits:siris/blade/magic/track/main
scoreboard players reset @s[nbt={HurtTime:9s},nbt=!{active_effects:[{id:"minecraft:resistance"}]}] kits.ability5CD

# kits.ability1CD = Super CD
# kits.ability2CD = Magic CD
# kits.ability3CD = Block count
# kits.ability4CD = Darkfire CD
# kits.ability5CD = Bonus combo count
# kits.timer = Magic drawing duration
# kits.timer2 = Block hold/release detection
