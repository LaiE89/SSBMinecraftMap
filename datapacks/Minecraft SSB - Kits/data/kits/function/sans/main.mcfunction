# Ability CDs
title @s actionbar ["",{"text":"Bone:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/25","color":"white"},{"text":" || ","color":"white"},{"text":"Blue Bone:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Gaster Blaster:","color":"blue"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/5","color":"white"},{"text":" || ","color":"white"},{"text":"Telekinesis:","color":"dark_red"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Dodge:","color":"dark_purple"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"white"},{"text":"/100","color":"white"}]

execute as @s[scores={kits.criterion.attack=1..}] run function kits:sans/dodgeregain

execute as @s at @s unless entity @s[predicate=kits:items/sans/head] run function kits:sans/headreplace
effect give @s[scores={health=3..}] minecraft:instant_health

# Bones
scoreboard players add @s[scores={kits.ability1CD=..24}] kits.ability1CD 1
execute as @e[type=area_effect_cloud,tag=sansbones] at @s run function kits:sans/bonedamage
execute as @s[gamemode=!spectator,tag=!SansDodged,scores={kits.criterion.COS=1..},predicate=kits:items/sans/bones] as @s[scores={kits.ability1CD=25..}] at @s run function kits:sans/weapon1cos

# Blue Bones
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @e[type=area_effect_cloud,tag=sansbones2] at @s run function kits:sans/bonedamage2
execute as @s[gamemode=!spectator,tag=!SansDodged,scores={kits.criterion.shift=1..},predicate=kits:items/sans/bones] as @s[scores={kits.ability2CD=100..}] at @s run function kits:sans/weapon1shift

# Gaster Blaster
scoreboard players add @s[scores={kits.ability3CD=..4}] kits.timer 1
scoreboard players add @s[scores={kits.timer=100}] kits.ability3CD 1
scoreboard players set @s[scores={kits.timer=100..}] kits.timer 0
execute as @s[scores={kits.ability3CD=1..},tag=!SansDodged,predicate=kits:items/sans/powers] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:sans/weapon2cos
execute as @e[type=armor_stand,tag=sansblaster] at @s run function kits:sans/sansblaster
execute as @e[type=area_effect_cloud,tag=sansblasterprojectile] at @s run function kits:sans/sansblasterdamage

# Telekinesis
scoreboard players add @s[scores={kits.ability4CD=..149}] kits.ability4CD 1
execute as @s[gamemode=!spectator,tag=!SansTelekinesis,scores={kits.criterion.shift=1..},predicate=kits:items/sans/powers] as @s[scores={kits.ability4CD=150..}] at @s run function kits:sans/weapon2shift
execute as @s[gamemode=!spectator,tag=SansTelekinesis,scores={kits.criterion.shift=1..},predicate=kits:items/sans/powers] as @s[scores={kits.ability4CD=5..}] at @s run function kits:sans/telekinesis
scoreboard players add @s[tag=SansTelekinesis] kits.timer2 1
execute as @s[tag=SansTelekinesis,scores={kits.timer2=100..}] at @s run function kits:sans/resettelekinesis

# Dodge
scoreboard players add @s[scores={kits.ability5CD=..99}] kits.ability5CD 1
effect give @s[scores={kits.ability5CD=100..}] minecraft:resistance 1 9 true 
execute as @s[gamemode=!spectator,scores={kits.ability5CD=100..}] at @s[scores={kits.criterion.resistDmg=1..}] run function kits:sans/dodge
